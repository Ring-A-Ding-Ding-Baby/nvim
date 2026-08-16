return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				nix = { "nixfmt" },
				rust = { "rustfmt" },
				java = { "palantir-java-format" },
			},
			format_on_save = {
				lsp_format = "fallback",
				timeout_ms = 500,
			},
			format_after_save = {
				lsp_format = "fallback",
			},
			notify_no_formatters = true,
		},
	},
}
