
default['my-workstation']['home'] = '/home/hkraemer'
default['my-workstation']['user'] = 'hkraemer'
default['my-workstation']['user'] = 'group'

default['my-workstation']['i3']['packages'] = %w(i3 i3lock)
default['my-workstation']['xterm']['packages'] = %w(xterm)
default['my-workstation']['vim']['packages'] = %w(vim gvim)

default['my-workstation']['vim']['directories'] = %w(.vim/colors .vim/bundle .vim/autoload)

default['my-workstation']['vim']['pathogen-plugins']['easytags'] = {
    "repo" => "https://github.com/xolox/vim-easytags"
}

default['my-workstation']['vim']['pathogen-plugins']['easymotion'] = {
    "repo" => "https://github.com/Lokaltog/vim-easymotion"
}

default['my-workstation']['vim']['pathogen-plugins']['powerline'] = {
    "repo" => "https://github.com/Lokaltog/vim-powerline"
}

default['my-workstation']['vim']['pathogen-plugins']['localvimrc'] = {
    "repo" => "https://github.com/embear/vim-localvimrc"
}
