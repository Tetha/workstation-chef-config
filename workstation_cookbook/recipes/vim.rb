
node['my-workstation']['vim']['packages'].each do |p|
    package p do
        action :upgrade
    end
end

node['my-workstation']['vim']['directories'].each do |d|
    directory File.join( node['my-workstation']['home'], d) do
        action :create
	recursive true
	owner node['my-workstation']['user']
	group node['my-workstation']['group']
    end
end

template File.join( node['my-workstation']['home'], '.vim/autoload/pathogen.vim' do
    source 'pathogen.vim'
end

template "#{node['my-workstation']['home']}/.vim/colors/oceandeep.vim" do
    source 'oceandeep.vim.erb'
end

node['my-workstation']['vim']['pathogen-plugins'].each do |name, config|
    git "#{node['my-workstation']['home']}/.vim/bundle/#{name}" do
        action :sync
        repository config['repo']
    end
end
