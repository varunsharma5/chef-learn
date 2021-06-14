#
# Cookbook:: apache_test
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package 'httpd'


service 'httpd' do
  action [:enable, :start]
end

file '/var/www/html/index.html' do
  content '<html>
  <body>
    <h1>hello work<h1>
  </body>
  </html>'
end
