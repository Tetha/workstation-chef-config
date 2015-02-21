
node['my-workstation']['powerline']['packages'].each do |p|
  package p do
    action :upgrade
  end
end

execute 'Install Powerline' do
  command 'pip install powerline-status'
  creates '/usr/bin/powerline'
end
