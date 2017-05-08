#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

if node['platform_family'] == 'debian'
	pkg = "apache2"
elsif node['platform_family'] == 'rhel'
	pkg = "httpd"
end


package 'apache' do
	package_name pkg
	action :install
end

service 'apache' do
	service_name pkg
	action [ :start, :enable ]
end
