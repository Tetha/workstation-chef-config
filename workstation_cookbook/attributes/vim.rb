
default['my-workstation']['vim']['packages'] = %w(vim gvim ctags)

default['my-workstation']['vim']['static-templates'] = {
  'global_vimrc.erb' => '.vimrc',
  'pathogen.vim.erb' => '.vim/autoload/pathogen.vim',
  'oceandeep.vim.erb' => '.vim/colors/oceandeep.vim'
}

default['my-workstation']['vim']['pathogen-plugins']['easytags'] = {
  'repo' => 'https://github.com/xolox/vim-easytags'
}

default['my-workstation']['vim']['pathogen-plugins']['easymotion'] = {
  'repo' => 'https://github.com/Lokaltog/vim-easymotion'
}

default['my-workstation']['vim']['pathogen-plugins']['powerline'] = {
  'repo' => 'https://github.com/Lokaltog/vim-powerline'
}

default['my-workstation']['vim']['pathogen-plugins']['localvimrc'] = {
  'repo' => 'https://github.com/embear/vim-localvimrc'
}

default['my-workstation']['vim']['pathogen-plugins']['vim-misc'] = {
  'repo' => 'https://github.com/xolox/vim-misc'
}
