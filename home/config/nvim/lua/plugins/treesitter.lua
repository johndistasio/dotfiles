return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      -- Treesitter syntax highlighting is way too aggressive on a lot of these.
      ensure_installed = {
        "bash",
        --"c_sharp",
        "diff",
        --"go",
        "html",
        "javascript",
        "json",
        --"lua",
        "make",
        -- Markdown is specifically disabled because I don't like the defaults for code blocks.
        -- https://github.com/nvim-treesitter/nvim-treesitter/issues/5751
        -- "markdown",
        -- "markdown_inline",
        "python",
        "query",
        "regex",
        "rust",
        "terraform",
        "tsx",
        "typescript",
        "vim",
        --"yaml",
      },
    },
  },
}
