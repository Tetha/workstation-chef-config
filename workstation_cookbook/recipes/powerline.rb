
node['my-workstation']['powerline']['packages'].each do |p|
  package p do
    action :upgrade
  end
end

execute 'Install Powerline' do
  command 'pip install powerline-status'
  creates '/usr/bin/powerline'
end

directory node['my-workstation']['cache'] do
  action :create
  owner node['my-workstation']['user']
  group node['my-workstation']['group']
  recursive true
end

git 'Powerline Fonts -> Cache' do
  action :checkout
  repository 'https://github.com/powerline/fonts.git'
  destination "#{node['my-workstation']['cache']}/powerline_fonts"
  owner node['my-workstation']['user']
  group node['my-workstation']['group']
  notifies :run, 'bash[install_fonts]', :immediately
end

bash 'install_fonts' do
  action :nothing
  cwd "#{node['my-workstation']['cache']}/powerline_fonts"
  code <<-EOH
    ./install.sh
    EOH
end
