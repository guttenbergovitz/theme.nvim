# Guttenbergovitz for Neovim

A minimalist theme for Neovim inspired by jazz and traditional printing aesthetics.

## Requirements

- Neovim >= 0.9.0
- True color terminal support

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
    "guttenbergovitz/theme.nvim",
    name = "guttenbergovitz",
    version = "*",  -- Use latest stable version
    priority = 1000,
    lazy = false,
    opts = {
        -- Default configuration
        transparent_background = false,
        dim_inactive = false,
        term_colors = true,
        styles = {
            comments = { italic = true },
            keywords = { bold = true },
            functions = {},
            variables = {},
            strings = { italic = true },
        },
        plugins = {
            gitsigns = true,
            indent_blankline = true,
            nvim_tree = true,
            lualine = true,
            bufferline = true,
        }
    },
    config = function(_, opts)
        vim.opt.termguicolors = true
        require("guttenbergovitz").setup(opts)
        vim.cmd.colorscheme("guttenbergovitz")
    end,
}
```

#### Override default options in lazy.nvim

```lua
{
    "guttenbergovitz/theme.nvim",
    opts = {
        transparent_background = true,  -- override specific option
        styles = {
            comments = { italic = false },  -- disable italics for comments
        },
        plugins = {
            nvim_tree = false,  -- disable nvim-tree support
        }
    }
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
    'guttenbergovitz/theme.nvim',
    config = function()
        vim.opt.termguicolors = true
        require("guttenbergovitz").setup({
            -- your configuration here
        })
        vim.cmd.colorscheme('guttenbergovitz')
    end
}
```

## Configuration

### Default Configuration

```lua
require("guttenbergovitz").setup({
    -- Background Options
    transparent_background = false,  -- Enable transparent background
    dim_inactive = false,           -- Dim inactive windows
    term_colors = true,             -- Set terminal colors

    -- Syntax Highlighting Styles
    styles = {
        comments = { italic = true },   -- Style for comments
        keywords = { bold = true },     -- Style for language keywords
        functions = {},                 -- Style for function declarations
        variables = {},                 -- Style for variables
        strings = { italic = true },    -- Style for string literals
    },

    -- Plugin Integration
    plugins = {
        gitsigns = true,            -- Git status indicators
        indent_blankline = true,    -- Indentation guides
        nvim_tree = true,           -- File explorer
        lualine = true,             -- Status line
        bufferline = true,          -- Buffer/Tab line
    }
})
```

### Style Options

Each syntax element can have the following style options:
- `bold = true/false`
- `italic = true/false`
- `underline = true/false`
- `undercurl = true/false`
- `strikethrough = true/false`

Example:
```lua
styles = {
    keywords = { bold = true, italic = true },
    functions = { bold = true },
    comments = { italic = true },
}
```

### Plugin Support

The theme provides custom highlighting for popular plugins. You can enable/disable them individually:

```lua
plugins = {
    -- Git Integration
    gitsigns = true,         -- gitsigns.nvim highlights
    
    -- UI Enhancement
    indent_blankline = true, -- indent-blankline.nvim
    nvim_tree = true,        -- nvim-tree.lua
    
    -- Status/Buffer Lines
    lualine = true,          -- lualine.nvim
    bufferline = true,       -- bufferline.nvim
}
```

## Features

- Warm, ergonomic color palette
- Optimized for readability
- Minimal yet meaningful syntax highlighting
- True color support
- Inspired by traditional printing and jazz aesthetics

## Supported Plugins

The theme includes custom highlighting for popular plugins:

- **Status Lines**
  - vim-airline
  - lualine.nvim

- **File Navigation**
  - nvim-tree
  - bufferline.nvim

- **Git Integration**
  - gitsigns.nvim

- **Editor Enhancement**
  - indent-blankline.nvim

## Troubleshooting

If you encounter the "module 'guttenbergovitz' not found" error:

1. Make sure the plugin is properly installed
2. Check if the plugin path is in your runtimepath:
   ```lua
   :lua print(vim.inspect(vim.api.nvim_list_runtime_paths()))
   ```
3. Clear the plugin cache:
   - For Packer:
     ```
     :PackerClean
     :PackerSync
     ```
   - For Lazy:
     ```
     :Lazy clean
     :Lazy sync
     ```

4. Restart Neovim after clearing the cache

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

MIT License - see [LICENSE](LICENSE) for details

## Philosophy

> "It's not the notes you play, it's the notes you don't play." - Miles Davis

Guttenbergovitz for Neovim maintains the same philosophy as its VS Code counterpart - minimalism, elegance, and functionality. Each color element has been carefully chosen to ensure comfortable work and reduce eye strain. 