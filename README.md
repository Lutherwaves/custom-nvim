# Custom Neovim Configuration

A modern, modular, and extensible Neovim setup powered by [NvChad](https://github.com/NvChad/NvChad), tailored for productivity, code intelligence, and a smooth developer experience.

## Features

- **NvChad Base:** Fast, minimal, and highly customizable Neovim framework
- **LSP & Autocompletion:** Out-of-the-box support for multiple languages with `nvim-lspconfig` and `nvim-cmp`
- **Formatting & Linting:** Automated code formatting on save via `conform.nvim`
- **Git Integration:** Visualize and manage git changes with `gitsigns.nvim`
- **Snippets:** Powerful snippet support using `LuaSnip`
- **AI Assistance:** Integrated with `aider.nvim` for AI-powered code suggestions
- **Project Management:** Enhanced project navigation and management with `harpoon`
- **Custom Keymaps:** Productivity-focused keybindings for navigation, editing, and plugin management

## Getting Started

### Prerequisites

- [Neovim](https://neovim.io/) >= 0.9.0
- [git](https://git-scm.com/)
- [Node.js](https://nodejs.org/) (for some plugins)
- [Python 3](https://www.python.org/) (for some LSPs)

### Installation

1. **Clone this repo:**
   ```sh
   git clone https://github.com/yourusername/your-nvim-config.git ~/.config/nvim
   ```

2. **Start Neovim:**
   ```sh
   nvim
   ```
   Plugins will be installed automatically on first launch.

3. **(Optional) Install language servers and tools:**
   - Use `:Mason` to install LSP servers, formatters, and linters.

## Usage

- **File Explorer:** `<leader> e`
- **Fuzzy Find Files:** `<leader> f`
- **LSP Actions:** `gd` (go to definition), `gr` (references), `K` (hover docs)
- **Format on Save:** Enabled by default for supported filetypes
- **AI Assistant:** `<leader>ai` to open Aider chat, `<leader>af` to add current file, `<leader>ar` to remove, `<leader>ac` to clear context
- **Harpoon:** `<leader>q` to add file, `<C-e>` to toggle menu, `<C-h/j/k/l>` to jump to marks 1-4, `<C-S-P/N>` to cycle through marks

## Customization

- **Plugins:** Add or remove plugins in `lua/plugins/init.lua`
- **LSP & Completion:** Configure in `lua/configs/lspconfig.lua` and `lua/configs/cmp.lua`
- **Formatting:** Edit `lua/configs/conform.lua` for formatter settings
- **Keymaps:** Edit `lua/mappings.lua`
- **Options:** Tweak settings in `lua/options.lua`
- **Custom Logic:** Place your own Lua modules in `lua/custom/`

## Structure

