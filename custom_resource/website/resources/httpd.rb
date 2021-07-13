property :instance_name, String, name_property: true
property :port, Integer, required: true

action :create do
  package 'httpd' do
    action :install
  end

  template "/lib/systemd/system/httpd-#{new_resource.instance_name}" do
    source 'httpd.service.erb'
    variables(
      instance_name: new_resource.instance_name,
      port: new_resource.port
    )
    action :create
  end

  directory "/var/www/vhost/#{new_resource.instance_name}" do
    recursive true
    action :create
  end

  service "httpd-#{new_resource.instance_name}" do
    action [:enable, :start]
  end
end
