#
# Cookbook:: website
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

# website_httpd 'httpd_site' do
#   port 81
#   action :create
# end

website_fcontent '/tmp/new_file.txt' do
  content 'Hello this is customer resource testing with converge_if_changed'
end
