
node['my-workstation']['i3']['packages'].each do |p|
  package p do
    action :upgrade
  end
end

directory "#{node['my-workstation']['home']}/.i3" do
  action :create
  owner node['my-workstation']['user']
  group node['my-workstation']['group']
  recursive true
end

template "#{node['my-workstation']['home']}/.i3/config" do
  source "i3_config.erb"
  owner node['my-workstation']['user']
  group node['my-workstation']['group']
end
