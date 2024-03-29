--type conform.options
local options = {
	lsp_fallback = true,

  formatters = {
    rufo = {
      command = "rufo",
      exit_codes = { 0, 3 }
    }
  },

	formatters_by_ft = {
		lua = { "stylua" },

		javascript = { "prettier" },
		css = { "prettier" },
		html = { "prettier" },

		sh = { "shfmt" },
    ruby = { "rufo"},
	},

  -- adding same formatter for multiple filetypes can look too much work for some
  -- instead of the above code you could just use a loop! the config is just a table after all!

	format_on_save = {
	  -- These options will be passed to conform.format()
	  timeout_ms = 1000,
	  lsp_fallback = true,
	},
}

require("conform").setup(options)
