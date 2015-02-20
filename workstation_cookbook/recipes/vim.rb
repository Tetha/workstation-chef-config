
node['my-workstation']['vim']['packages'].each do |p|
    package p do
        action :upgrade
    end
end

template "#{node['my-workstation']['home']}/.vim/colors/oceandeep.vim" do
    source 'oceandeep.vim.erb'
done

node['my-workstation']['vim']['pathogen-plugins'].each do |name, config|
    git "#{node['my-workstation']['home']}/.vim/bundle/#{name}" do
        action :sync
        repository config['repo']
    end
end
