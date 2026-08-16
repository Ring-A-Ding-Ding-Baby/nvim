return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {},
	},
	{
		"sphamba/smear-cursor.nvim",
		opts = {},
	},
	{
		"josstei/whisk.nvim",
		event = "VeryLazy",
		init = function()
			vim.g.whisk_auto_setup = 0
		end,
		opts = {
			cursor = {
				enabled = false,
			},
		},
	},
	{
		"theHamsta/nvim-dap-virtual-text",
		opts = {
			enabled = true,
			highlight_changed_variables = true,
		},
	},
	{
		"igorlfs/nvim-dap-view",
		dependencies = {
			"mfussenegger/nvim-dap",
		},
		config = function(_, opts)
			local dap, dapview = require("dap"), require("dap-view")
			-- require('dap').defaults.fallback.switchbuf = 'usetab,uselast,useopen'
			dapview.setup(opts)
			dap.listeners.before.attach.dapui_config = function()
				dapview.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapview.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapview.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapview.close()
			end
		end,
	},
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},
		init = function() end,
		opts = {
			-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
			animation = true,
			-- highlight_alternate = true,
			auto_hide = 1,
			maximum_padding = 0,
			icons = {
				button = false,
				separator = {
					left = "",
					right = "",
				},
			},
		},
	},
	{ "MunifTanjim/nui.nvim" },
	{
		"Bekaboo/dropbar.nvim",
		-- optional, but required for fuzzy finder support
		dependencies = {
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			options = {
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				theme = "auto",
			},
		},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
		opts = {
			floating = {
				border = "none",
			},
		},
	},
}
