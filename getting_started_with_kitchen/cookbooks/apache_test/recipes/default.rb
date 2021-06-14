#
# Cookbook:: apache_test
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package 'httpd'

service 'httpd' do
    action [:enable, :start]
end

# file '/var/www/html/index.html' do
#     content '<html>
#   <body>
#     <h1>hello work<h1>
#   </body>
#   </html>'
# end

group 'web_admin'

user 'web_admin' do
  group 'web_admin'
  system true
  shell '/bin/bash'
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
  mode '0644'
  owner 'web_admin'
  group 'web_admin'
end
