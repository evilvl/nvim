return {
	"nvim-telescope/telescope.nvim",
	event = "VeryLazy",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-ui-select.nvim" },
		{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
	},
	config = function()
		require("telescope").setup({
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_ivy(),
				},
			},
			defaults = {
				layout_strategy = "horizontal",
				layout_config = {
					horizontal = {
						mirror = false,
						width = 0.9, -- Ширина окна (0.8 = 80% от ширины экрана)
						height = 0.9, -- Высота окна (0.8 = 80% от высоты экрана)
						prompt_position = "bottom",
						preview_width = 0.7,
					},
					vertical = {
						mirror = false,
						width = 0.8, -- Ширина окна (0.8 = 80% от ширины экрана)
						height = 0.8, -- Высота окна (0.8 = 80% от высоты экрана)
						prompt_position = "top",
					},
				},
			},
		})

		-- Enable Telescope extensions if they are installed
		pcall(require("telescope").load_extension, "fzf")
		pcall(require("telescope").load_extension, "ui-select")

		-- See `:help telescope.builtin`
		local builtin = require("telescope.builtin")
		local map = vim.keymap.set
		map("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
		map("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
		map("n", "<leader><space>", builtin.find_files, { desc = "[S]earch [F]iles" })
		map("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
		map("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
		map("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
		map("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
		map("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
		map("n", "<leader>s.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
		map("n", "<leader>b", builtin.buffers, { desc = "Find existing [B]uffers" })

		map("n", "<leader>s/", function()
			builtin.live_grep({
				grep_open_files = true,
				prompt_title = "Live Grep in Open Files",
			})
		end, { desc = "[S]earch [/] in Open Files" })

		-- Shortcut for searching your Neovim configuration files
		map("n", "<leader>sn", function()
			builtin.find_files({ cwd = vim.fn.stdpath("config") })
		end, { desc = "[S]earch [N]eovim files" })
	end,
}
