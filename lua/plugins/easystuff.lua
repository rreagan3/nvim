return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	"mbbill/undotree",
	{
		"glts/vim-radical",
		dependencies = {
			"glts/vim-magnum",
		}
	},
	"github/copilot.vim",
	{
		"Eandrju/cellular-automaton.nvim",
		keys = {
			{
				"n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<cr>", desc = "just f*ck it all up"
			}
		},
	}
}
