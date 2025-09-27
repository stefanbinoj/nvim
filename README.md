# 🚀 Stefan's Neovim Configuration

<img width="1907" height="1023" alt="Screenshot 2025-09-27 at 1 33 55 PM" src="https://github.com/user-attachments/assets/4d3408ef-bbdf-48f3-881a-a9b10da7d3a1" />

A blazingly fast, highly customized Neovim configuration built for productivity and modern development workflows. This setup transforms Neovim into a powerful IDE with intelligent completions, advanced Git integration, and seamless navigation tools.

## ✨ Key Features & Specialties

- **🎨 Beautiful UI**: GitHub Dark Colorblind theme with custom color column highlighting
- **⚡ Lightning Fast**: Lazy-loaded plugins for optimal startup performance  
- **🧠 Intelligent Completion**: GitHub Copilot integration with advanced autocompletion
- **🔍 Powerful Search**: Telescope with fuzzy finding and live grep capabilities
- **📁 Modern File Management**: Neo-tree with floating windows and intuitive navigation
- **🎯 Quick Navigation**: Harpoon for instant file jumping and MRU tracking
- **🔧 LSP Integration**: Full Language Server Protocol support with auto-formatting
- **📝 Smart Editing**: Auto-close tags/brackets, todo comments, and syntax highlighting
- **⚙️ Git Mastery**: Fugitive and Gitsigns for comprehensive version control
- **📊 Time Tracking**: WakaTime integration for development analytics
- **🎮 Vim-style Workflow**: Optimized keybindings and movement commands

## 🔌 Plugin Arsenal

### 🎨 **UI & Theming**
- **[github-nvim-theme](https://github.com/projekt0n/github-nvim-theme)** - Beautiful GitHub Dark Colorblind colorscheme
- **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)** - Blazing fast statusline with custom configuration
- **[nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)** - File type icons

### 🔍 **Navigation & Search**
- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** - Fuzzy finder for files, grep, and more
- **[telescope-ui-select](https://github.com/nvim-telescope/telescope-ui-select.nvim)** - Enhanced UI selections
- **[neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)** - Modern file explorer with floating windows
- **[harpoon](https://github.com/ThePrimeagen/harpoon)** - Quick file navigation and project management
- **[mru.nvim](https://github.com/wsdjeg/mru.nvim)** - Most Recently Used files tracking

### 🧠 **Completion & LSP**
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** - Language Server Protocol configurations
- **[mason.nvim](https://github.com/williamboman/mason.nvim)** - LSP/DAP/Linter installer
- **[mason-lspconfig.nvim](https://github.com/willianboman/mason-lspconfig.nvim)** - Mason-LSP bridge
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)** - Autocompletion engine
- **[cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)** - LSP completion source
- **[cmp-buffer](https://github.com/hrsh7th/cmp-buffer)** - Buffer text completion
- **[cmp-path](https://github.com/hrsh7th/cmp-path)** - File path completion
- **[copilot.vim](https://github.com/github/copilot.vim)** - GitHub Copilot AI assistance
- **[LuaSnip](https://github.com/L3MON4D3/LuaSnip)** - Snippet engine with VSCode snippet support

### 🌳 **Syntax & Highlighting**
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** - Advanced syntax highlighting and parsing
- **[nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)** - Context-aware code blocks
- **[vim-illuminate](https://github.com/RRethy/vim-illuminate)** - Automatic highlighting of word under cursor

### 🔧 **Editing & Formatting**
- **[none-ls.nvim](https://github.com/nvimtools/none-ls.nvim)** - Formatting and diagnostics (Prettier, Stylua, Rubocop)
- **[autoclose.nvim](https://github.com/m4xshen/autoclose.nvim)** - Automatic bracket/quote closing
- **[nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)** - Auto-close and rename HTML/XML tags
- **[Comment.nvim](https://github.com/numToStr/Comment.nvim)** - Smart commenting
- **[todo-comments.nvim](https://github.com/folke/todo-comments.nvim)** - Highlight and search TODO comments

### 🔄 **Git Integration**
- **[vim-fugitive](https://github.com/tpope/vim-fugitive)** - Complete Git integration with custom keybindings
- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)** - Git signs in gutter with blame and preview

### 🛠️ **Utilities**
- **[undotree](https://github.com/mbbill/undotree)** - Visualize undo history
- **[vim-wakatime](https://github.com/wakatime/vim-wakatime)** - Automatic time tracking
- **[lazy.nvim](https://github.com/folke/lazy.nvim)** - Modern plugin manager with lazy loading

## ⌨️ Notable Keybindings

### **Leader Key**: `<Space>`

#### 🔍 **Navigation**
- `<C-p>` - Find files (Telescope)
- `<C-n>` - Toggle Neo-tree (floating)
- `<leader>fg` - Live grep search
- `<leader>mru` - Most recently used files
- `<leader>a` - Add file to Harpoon
- `<C-m>` - Harpoon quick menu
- `<C-h/j/k/l>` - Navigate Harpoon files 1-4

#### 📝 **Editing**
- `jk` - Escape insert mode
- `<leader>d` - Delete without yanking
- `<leader>y` - Yank to system clipboard
- `<leader>p` - Paste without overwriting register
- `J/K` in visual - Move lines up/down

#### 🔧 **LSP & Development**
- `K` - Hover documentation
- `<leader>gd` - Go to definition  
- `<leader>gr` - Show references
- `<leader>ca` - Code actions
- `<leader>gf` - Format code
- `<C-j>` - Signature help (insert mode)

#### 🔄 **Git**
- `<leader>gs` - Git status
- `<leader>gp` - Preview hunk
- `<leader>gt` - Toggle line blame
- `<leader>p` - Git push (in Fugitive)
- `<leader>P` - Git pull --rebase

#### 🛠️ **Utilities**
- `<leader>u` - Toggle UndoTree
- `<leader>e` - Open diagnostic float
- `[d` / `]d` - Navigate diagnostics

## 🚀 Installation

1. **Backup your existing config** (if any):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   ```

2. **Clone this repository**:
   ```bash
   git clone https://github.com/stefanbinoj/nvim.git ~/.config/nvim
   ```

3. **Start Neovim**:
   ```bash
   nvim
   ```

4. **Let Lazy.nvim install plugins** - It will automatically download and install all plugins on first run

5. **Install language servers** - Run `:Mason` to install additional LSP servers

## 🎯 Special Configuration Highlights

- **Persistent Undo**: Unlimited undo history stored in `~/.vim/undodir`
- **Smart Indentation**: 4-space tabs with smart auto-indenting
- **Automatic Cleanup**: Trailing whitespace removal on save
- **Highlight on Yank**: Visual feedback when copying text
- **Centered Navigation**: Cursor stays centered during page scrolling
- **Relative Line Numbers**: Optimal for Vim-style movement
- **18-line Scroll Offset**: Maintains context while editing
- **Block Cursor**: Always visible cursor in all modes
- **Auto-reload**: Files changed externally are automatically reloaded

This configuration strikes the perfect balance between power and simplicity, providing a modern development environment while maintaining the efficiency and speed that makes Neovim special.

---

💝 **Made with love by Stefan** 💝