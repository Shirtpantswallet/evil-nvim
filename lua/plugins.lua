--vim.cmd [[packadd packer.nvim]]
local execute = vim.api.nvim_command
    -- refactor = {highlight_definitions = {enable = true}}
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path) execute 'packadd packer.nvim' end

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

return require('packer').startup(function(use)
  -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim'}

    -- NvimTree
    use 'kyazdani42/nvim-tree.lua'
	use 'kyazdani42/nvim-web-devicons'
    -- Lsp
	use 'neovim/nvim-lspconfig'
	use 'glepnir/lspsaga.nvim'
    use 'hrsh7th/nvim-compe'
	use 'mfussenegger/nvim-jdtls'
    use 'kabouzeid/nvim-lspinstall'
	use 'onsails/lspkind-nvim'
	use 'ray-x/lsp_signature.nvim'
	use {'neoclide/coc.nvim', branch = 'release'} -- if you want coc completion remove the coc-settings.json file
    use 'hrsh7th/vim-vsnip'

	-- Colorscheme
    use 'christianchiarulli/nvcode-color-schemes.vim'
	use 'norcalli/nvim-colorizer.lua'
	use 'bluz71/vim-nightfly-guicolors'
	use 'GustavoPrietoP/doom-one.vim'
    -- Telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-media-files.nvim'
    use 'kevinhwang91/nvim-bqf'

    -- LuaGuide
    use 'nanotee/nvim-lua-guide'

    -- Autopairs
    use 'windwp/nvim-autopairs'

    -- Thing at the bottom lol
    use 'romgrk/barbar.nvim'

	-- Treesitter
    use 'nvim-treesitter/playground'
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
	use 'GustavoPrietoP/nvim-ts-rainbow' -- my fork, check it out for rainbow parenthesis :)

	-- Debugger
    use 'mfussenegger/nvim-dap'

	-- Start Screen
	use 'glepnir/dashboard-nvim'

	-- Galaxy Line
	use 'glepnir/galaxyline.nvim'

	-- Everyone needs a terminal
	use 'akinsho/nvim-toggleterm.lua'
end)