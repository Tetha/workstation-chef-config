
template "#{node['my-workstation']['home']}/.zshrc" do
  source 'zshrc.erb'
end
