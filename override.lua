-- overriding default plugin configs!

local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "html",
    "css",
    "scss",
    "javascript",
    "typescript",
    "vue",
    "json",
    "markdown",
    "bash",
    "lua",
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          default = "",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
          symlink_open = "",
          arrow_open = "",
          arrow_closed = "",
        },
      },
    },
  },
}

M.blankline = {
  filetype_exclude = {
    "help",
    "terminal",
    "alpha",
    "packer",
    "lspinfo",
    "TelescopePrompt",
    "TelescopeResults",
    "nvchad_cheatsheet",
    "lsp-installer",
    "mason",
    "vue",
    "javascript",
    "html",
    "",
  },
}

M.alpha = {
  header = {
    val = {
      " ⠰⠃⠐⠀⠋⡠⠀⠮⠤⠤⠤⠤⡤⡄⠀⠀⠀⠀⠀⠀⢠⣽⠄⠀⠀⠀⠀⠀⢸⡆ ",
      " ⠀⠜⠀⠀⠈⠀⢠⣤⣔⣒⡒⠒⠂⠁⠀⡀⢀⣀⣤⣶⣿⡟⠀⠀⠀⠀⠀⢀⡼⠀ ",
      " ⠈⠀⠀⠀⠀⣰⡿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⠉⠁⠀⠀⠀⢄⡴⠋⠀⠀ ",
      " ⠀⠀⠀⠀⣰⠋⠀⠀⠀⠈⠙⠛⠛⠛⠛⠋⠉⠀⠀⠀⠀⢀⣠⣴⡊⠁⠀⠀⠀⠀ ",
      " ⠀⡠⠐⠉⢸⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⣤⣶⣿⣿⣿⡻⡄⠀⠀⠀⠀ ",
      " ⠀⠁⠀⠀⣿⢹⣿⣿⣿⣶⣦⣶⣶⣶⣶⣶⣙⠋⠴⠛⣿⢛⡿⠬⠃⠀⠀⠀⠀⠀ ",
      " ⠀⠀⠀⠀⠈⠘⠹⣿⣿⠛⠛⠛⢿⡇⠀⠉⠀⠘⠉⢰⣯⡊⠙⠀⠀⠀⠀⠀⠀⠀ ",
      " ⠀⠀⠀⠀⠀⠀⠀⠈⠱⡄⠀⠀⠘⠃⠀⠀⠀⠀⠠⠛⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀ ",
      " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⢲⣄⠀⠒⠂⠀⣀⢴⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
    },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "emmet-ls",
    "eslint_d",
    "json-lsp",
    "vue-language-server",
    "vetur-vls",

    -- shell
    "shfmt",
    "shellcheck",

    -- formatting
    "prettierd",
  },
}

return M
