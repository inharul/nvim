local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

-- PackerCompile - regenerate compiled loader file
-- PackerInstall - clean and then install the missing plugins
-- PackerClean - clean the unused plugins
-- PackerStatus - lists installed plugins
-- PackerUpdate - updates plugins (!risky if commits have errors)
-- PackerLoad {plugin} - loads the plugin immediately

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'jiangmiao/auto-pairs'
  use 'nvim-tree/nvim-web-devicons'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons' }
  }
end)
