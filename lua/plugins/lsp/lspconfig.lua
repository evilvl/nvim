return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		{ "j-hui/fidget.nvim", opts = {} },
	},
	opts = {
		servers = {
			lua_ls = {
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
						workspace = {
							checkThirdParty = false,
						},
						telemetry = {
							enable = false,
						},
					},
				},
			},
			bashls = {},
		},
	},
	config = function(_, opts)
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
			callback = function(event)
				local map = function(keys, func, desc, mode)
					mode = mode or "n"
					vim.keymap.set(mode, keys, func, {
						buffer = event.buf,
						desc = "LSP: " .. desc,
					})
				end

				map("gd", require("telescope.builtin").lsp_definitions, "Goto Definition")
				map("gr", require("telescope.builtin").lsp_references, "Goto References")
				map("gI", require("telescope.builtin").lsp_implementations, "Goto Implementation")
				map("<leader>D", require("telescope.builtin").lsp_type_definitions, "Type Definition")
				map("<leader>ds", require("telescope.builtin").lsp_document_symbols, "Document Symbols")
				map("<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, "Workspace Symbols")

				map("<leader>rn", vim.lsp.buf.rename, "Rename")
				map("<leader>ca", vim.lsp.buf.code_action, "Code Action")
				map("gD", vim.lsp.buf.declaration, "Goto Declaration")
				map("K", vim.lsp.buf.hover, "Hover Documentation")

				local client = vim.lsp.get_client_by_id(event.data.client_id)

				if client and client:supports_method("textDocument/documentHighlight") then
					local highlight_augroup = vim.api.nvim_create_augroup("lsp-highlight", { clear = false })

					vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
						buffer = event.buf,
						group = highlight_augroup,
						callback = vim.lsp.buf.document_highlight,
					})

					vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
						buffer = event.buf,
						group = highlight_augroup,
						callback = vim.lsp.buf.clear_references,
					})

					vim.api.nvim_create_autocmd("LspDetach", {
						group = vim.api.nvim_create_augroup("lsp-detach", { clear = true }),
						callback = function(event2)
							vim.lsp.buf.clear_references()
							vim.api.nvim_clear_autocmds({
								group = "lsp-highlight",
								buffer = event2.buf,
							})
						end,
					})
				end

				if client and client:supports_method("textDocument/inlayHint") then
					map("<leader>th", function()
						vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = event.buf }))
					end, "Toggle Inlay Hints")
				end
			end,
		})

		for server, config in pairs(opts.servers) do
			config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)

			vim.lsp.config(server, config)
			vim.lsp.enable(server)
		end
	end,
}
