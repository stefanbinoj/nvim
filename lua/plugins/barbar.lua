return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	opts = {
		-- Automatically hide the tabline when there are this many buffers left.
		-- Set to any value >=0 to enable.
		auto_hide = 0,
        animation = true,

		-- Enable/disable current/total tabpages indicator (top right corner)
		tabpages = false,

		-- Enables/disable clickable tabs
		--  - left-click: go to buffer
		--  - middle-click: delete buffer
		clickable = true,

		-- Valid options are 'left' (the default), 'previous', and 'right'
		focus_on_close = 'previous',

		-- Hide inactive buffers and file extensions. Other options are `alternate`, `current`, and `visible`.
		hide = {extensions = true, inactive = true},

		-- Disable highlighting alternate buffers
		highlight_alternate = false,

		-- Disable highlighting file icons in inactive buffers
		highlight_inactive_file_icons = false,

		-- Enable highlighting visible buffers
		highlight_visible = true,
		icons = {
			-- Configure the base icons on the bufferline.
			-- Valid options to display the buffer index and -number are `true`, 'superscript' and 'subscript'
			buffer_index = true,
			buffer_number = true,
			button = '',
			-- Enables / disables diagnostic symbols
			diagnostics = {
				[vim.diagnostic.severity.ERROR] = {enabled = true, icon = 'ﬀ'},
				[vim.diagnostic.severity.WARN] = {enabled = true, icon = 'ﬂ'},
				[vim.diagnostic.severity.INFO] = {enabled = false},
				[vim.diagnostic.severity.HINT] = {enabled = true},
			},
			gitsigns = {
				added = {enabled = true, icon = '+'},
				changed = {enabled = true, icon = '~'},
				deleted = {enabled = true, icon = '-'},
			},
			filetype = {
				-- Sets the icon's highlight group.
				-- If false, will use nvim-web-devicons colors
				custom_colors = false,

				-- Requires `nvim-web-devicons` if `true`
				enabled = true,
			},
			separator = {left = '▎', right = ''},

			-- If true, add an additional separator at the end of the buffer list
			separator_at_end = true,


			-- Configure the icons on the bufferline when modified or pinned.
			-- Supports all the base icon options.
			modified = {button = '●'},
			pinned = {button = '', filename = true},

			-- Use a preconfigured buffer appearance— can be 'default', 'powerline', or 'slanted'
			preset = 'default',

			-- Configure the icons on the bufferline based on the visibility of a buffer.
			-- Supports all the base icon options, plus `modified` and `pinned`.
			alternate = {filetype = {enabled = false}},
			current = {buffer_index = true},
			inactive = {button = '×'},
			visible = {modified = {buffer_number = false}},
		},
	},
	version = "^1.0.0", -- optional: only update when a new 1.x version is released
	config = function()
		local map = vim.api.nvim_set_keymap
		local opts = { noremap = true, silent = true }



		-- Leader keymaps for buffer navigation
		map('n', '<leader>b1', '<Cmd>BufferGoto 1<CR>', opts)
		map('n', '<leader>b2', '<Cmd>BufferGoto 2<CR>', opts)
		map('n', '<leader>b3', '<Cmd>BufferGoto 3<CR>', opts)
		map('n', '<leader>b4', '<Cmd>BufferGoto 4<CR>', opts)
        map('n', '<leader>b0', '<Cmd>BufferLast<CR>', opts)

		-- Pin/unpin buffer
		map('n', '<leader>bp', '<Cmd>BufferPin<CR>', opts)

		-- Goto pinned/unpinned buffer
		--                 :BufferGotoPinned
		--                 :BufferGotoUnpinned

		-- Close buffer
		map('n', '<leader>bc', '<Cmd>BufferClose<CR>', opts)
		map('n', '<leader>bd', '<Cmd>BufferCloseAllButCurrent<CR>', opts)  -- Close all except current
		map('n', '<leader>b<tab>', '<Cmd>BufferNext<CR>', opts)  -- Rotate to next buffer

		-- Wipeout buffer
		--                 :BufferWipeout

		-- Close commands
		--                 :BufferCloseAllButCurrent
		--                 :BufferCloseAllButPinned
		--                 :BufferCloseAllButCurrentOrPinned
		--                 :BufferCloseBuffersLeft
		--                 :BufferCloseBuffersRight


	end,
}
