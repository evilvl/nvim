return {
	"nickjvandyke/opencode.nvim",
	event = "VeryLazy",
	version = "*",
	config = function()
		---@type opencode.Opts
		vim.g.opencode_opts = {
			ask = {
				win = {
					position = "float",
					width = 0.4,
				},
			},
		}

		local map = vim.keymap.set
		local ns = vim.api.nvim_create_namespace("opencode")

		map({ "n", "x" }, "<leader>oa", function()
			require("opencode").ask("@this: ")
		end, { desc = "OpenCode [A]sk" })
		map({ "n", "x" }, "<leader>os", function()
			require("opencode").select()
		end, { desc = "OpenCode [S]elect" })
		map({ "n", "x" }, "go", function()
			return require("opencode").operator("@this ")
		end, { desc = "OpenCode append range", expr = true })
		map({ "n" }, "goo", function()
			return require("opencode").operator("@this ") .. "_"
		end, { desc = "OpenCode append line", expr = true })
		map("n", "<leader>oc", function()
			require("opencode").command("session.new")
		end, { desc = "OpenCode [C]lear session" })
		map("n", "<leader>on", function()
			require("opencode").command("session.new")
		end, { desc = "OpenCode [N]ew session" })
		map("n", "<S-C-u>", function()
			require("opencode").command("session.half.page.up")
		end, { desc = "OpenCode scroll up" })
		map("n", "<S-C-d>", function()
			require("opencode").command("session.half.page.down")
		end, { desc = "OpenCode scroll down" })
		map("n", "<leader>ore", function()
			require("opencode").reload()
		end, { desc = "OpenCode [R]eload edits" })
		map("n", "<leader>oya", function()
			require("opencode").accept()
		end, { desc = "OpenCode [A]ccept edits" })
		map("n", "<leader>oyr", function()
			require("opencode").reject()
		end, { desc = "OpenCode [R]eject edits" })
		vim.api.nvim_create_autocmd("User", {
			pattern = "opencode.accept",
			callback = function(args)
				vim.schedule(function()
					vim.cmd("checkhealth opencode")
					vim.notify(
						"Opencode edits accepted",
						vim.log.levels.INFO,
						{ title = "opencode.nvim", namespace = ns }
					)
				end)
			end,
		})
		vim.api.nvim_create_autocmd("User", {
			pattern = "opencode.reject",
			callback = function(args)
				vim.schedule(function()
					vim.cmd("checkhealth opencode")
					vim.notify(
						"Opencode edits rejected",
						vim.log.levels.INFO,
						{ title = "opencode.nvim", namespace = ns }
					)
				end)
			end,
		})
		vim.api.nvim_create_autocmd("User", {
			pattern = "opencode.exit",
			callback = function(args)
				vim.schedule(function()
					vim.notify("Opencode exited", vim.log.levels.INFO, { title = "opencode.nvim", namespace = ns })
				end)
			end,
		})
	end,
}
