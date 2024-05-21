return {
  { -- useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'vimenter', -- sets the loading event to 'vimenter'
    config = function() -- this is the function that runs, after loading
      require('which-key').setup()

      -- document existing key chains
      require('which-key').register {
        ['<leader>c'] = { name = '[c]ode', _ = 'which_key_ignore' },
        ['<leader>d'] = { name = '[d]ocument', _ = 'which_key_ignore' },
        ['<leader>r'] = { name = '[r]ename', _ = 'which_key_ignore' },
        ['<leader>s'] = { name = '[s]earch', _ = 'which_key_ignore' },
        ['<leader>w'] = { name = '[w]orkspace', _ = 'which_key_ignore' },
        ['<leader>t'] = { name = '[t]oggle', _ = 'which_key_ignore' },
        ['<leader>h'] = { name = 'git [h]unk', _ = 'which_key_ignore' },
      }
      -- visual mode
      require('which-key').register({
        ['<leader>h'] = { 'git [h]unk' },
      }, { mode = 'v' })
    end,
  },
}
