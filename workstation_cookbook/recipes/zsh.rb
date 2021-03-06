
node['my-workstation']['zsh']['packages'].each do |p|
  package p do
    action :upgrade
  end
end
bash 'change login shell' do
  cwd '/tmp'
  code <<-EOH
    chsh -s "$(which zsh)" hkraemer
  EOH
end
template "#{node['my-workstation']['home']}/.zshrc" do
  source 'zshrc.erb'
end
