# To learn more about Custom Resources, see https://docs.chef.io/custom_resources
provides :apache_vhost

action :create do
  directory '/srv/apache/admins/html' do
    mode '0755'
    recursive true
  end

  template '/etc/apache2/sites-enabled/admins.conf' do
    source 'con.erb'
    mode '0644'
    variables(document_root: '/srv/apache/admins/html', port: 8080)
    notifies :reload, 'service[apache2]'
  end

  file '/srv/apache/admins/html/index.html' do
    content '<h1>Welcome admins !</h1>'
  end
end
