return {
	{
		"folke/tokyonight.nvim",
		lazy = true,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = true,
		config = function()
			vim.cmd("colorscheme rose-pine")
			require("rose-pine").setup({
							disable_background = true,
			})
		end
	}
}
