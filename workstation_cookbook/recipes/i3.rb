
node['my-workstation']['i3']['packages'].each do |p|
  package p do
    action :upgrade
  end
end
