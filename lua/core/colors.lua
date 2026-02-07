-- Load dankcolors configuration if the file exists
vim.api.nvim_create_autocmd("User", {
	pattern = "VeryLazy",
	callback = function()
		local dankcolors_path = vim.fn.stdpath("config") .. "/lua/plugins/dankcolors.lua"
		local stat = vim.loop.fs_stat(dankcolors_path)
		if stat then
			-- Load and execute the dankcolors configuration directly
			local success, result = pcall(dofile, dankcolors_path)
			if success then
				-- Get the plugin configuration and execute it
				local spec = result
				if spec and spec[1] and spec[1].config then
					local config_success, config_result = pcall(spec[1].config)
					if config_success then
						print("Dankcolors configuration executed successfully")
					else
						print("Error executing dankcolors config: " .. tostring(config_result))
					end
				end
			else
				print("Error loading dankcolors.lua: " .. tostring(result))
			end
		else
			print("Dankcolors file not found, using default colors")
		end
	end,
})

