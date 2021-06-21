#
# Cookbook:: custom_web
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

os_family = ""

apt_update 'update apt database'

package 'apache2'

file '/var/www/html/index.html' do
  content '<h1>Welcome home !</h1>'
end

directory '/srv/apache/admins/html' do
  recursive true
  mode '0755'
end

file '/srv/apache/admins/html/index.html' do
  content '<h1>Welcome admins !</h1>'
end

template '/etc/apache2/sites-enabled/admins.conf' do
  source 'admins.conf.erb'
  mode '0644'
  variables(document_root: '/srv/apache/admins/html', port: 8080)
  notifies :reload, 'service[apache2]'
end

service 'apache2' do
  action [:enable, :start]
end
