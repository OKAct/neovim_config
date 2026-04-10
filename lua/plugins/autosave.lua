return {
	{
		"Pocco81/auto-save.nvim",
		config = function()
			require("auto-save").setup({
				enabled = true, -- turn on auto-save
				trigger_events = { "InsertLeave", "TextChanged" }, -- when to save
				-- Optional settings
				-- write_all_buffers = false,
				-- debounce_delay = 135,
			})
		end,
	},
}
