local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
	use 'nvim-lua/plenary.nvim'
    use { 'LionC/nest.nvim' }
    use 'nvim-telescope/telescope.nvim'
    use 'gruvbox-community/gruvbox'
    use 'ms-jpq/chadtree'
    use 'mbbill/undotree'
    use 'neovim/nvim-lspconfig'
	use 'nvim-treesitter/nvim-treesitter'
    use 'tpope/vim-fugitive'
    use 'kyazdani42/nvim-web-devicons'
    use 'romgrk/barbar.nvim'
    use 'ms-jpq/coq_nvim'
	use 'ms-jpq/coq.artifacts'
    use 'airblade/vim-gitgutter'
    use 'tpope/vim-commentary'
    use 'vim-airline/vim-airline'
    use 'nathanaelkane/vim-indent-guides'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'jiangmiao/auto-pairs'
end)
