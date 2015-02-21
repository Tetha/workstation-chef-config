
node['my-workstation']['vim']['packages'].each do |p|
  package p do
    action :upgrade
  end
end

node['my-workstation']['vim']['static-templates'].each do |template, target|
  destination = File.join(node['my-workstation']['home'], target)
  directory File.dirname(destination) do
    action :create
    owner node['my-workstation']['user']
    group node['my-workstation']['group']
    recursive true
  end

  template destination do
    source template
  end
end

node['my-workstation']['vim']['pathogen-plugins'].each do |name, config|
  directory "#{node['my-workstation']['home']}/.vim/bundle" do
    action :create
    owner node['my-workstation']['user']
    group node['my-workstation']['group']
    recursive true
  end
  
  git "#{node['my-workstation']['home']}/.vim/bundle/#{name}" do
    action :sync
    repository config['repo']
    user node['my-workstation']['user']
    group node['my-workstation']['group']
  end
end
