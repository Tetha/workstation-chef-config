
node['my-workstation']['xterm']['packages'].each do |p|
  package p do
    action :upgrade
  end
end
