
node['my-workstation']['xterm']['packages'].each do |p|
  package p do
    action :upgrade
  end
end

template "#{node['my-workstation']['home']}/.Xresources" do
  source 'Xresources.erb'
  owner node['my-workstation']['user']
  group node['my-workstation']['group']
  notifies :run, 'bash[source_xresources]', :immediately
end

bash 'source_xresources' do
  action :nothing
  cwd node['my-workstation']['home']
  code <<-EOH
    xrdb -load #{node['my-workstation']['home']}.Xresources
    EOH
end
