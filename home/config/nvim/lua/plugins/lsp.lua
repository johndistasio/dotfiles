return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        denols = {
          root_dir = require("lspconfig.util").root_pattern("deno.json", "deno.jsonc", "import_map.json"),
        },
        tsserver = {
          root_dir = require("lspconfig.util").root_pattern("package.json"),
          single_file_support = false,
        },
      },
    },
  },
  { "NoahTheDuke/vim-just" },
}
