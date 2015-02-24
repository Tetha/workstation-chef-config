
default['my-workstation']['home'] = '/home/hkraemer'
default['my-workstation']['cache'] = '/home/hkraemer/.workstation_chef_tmp'
default['my-workstation']['user'] = 'hkraemer'
default['my-workstation']['group'] = 'hkraemer'

default['my-workstation']['i3']['packages'] = %w(i3 i3lock i3status)
default['my-workstation']['xterm']['packages'] = %w(xterm)
default['my-workstation']['zsh']['packages'] = %w(zsh)
