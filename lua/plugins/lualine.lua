require('lualine').setup({
		options = {
				theme='catppuccin',
				disabled_filetypes = { 'packer', 'NvimTree' },
				icons_enabled = true,
				ignore_focus = {},
				component_separators = '|',
				section_separators = { left = '', right = '' },
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				}
			},
			sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {'branch'},
				lualine_z = {'location'},
			},
			inactive_sections = {
				lualine_a = { 'filename' },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { 'location' },
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {'nvim-tree'}
})
