#
# Cookbook Name:: nginx-sample
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

directory node['nginx-sample']['basepath'] do
  action :create
end

cookbook_file "#{node['nginx-sample']['basepath']}/index.html" do
  source 'index.html'
  owner 'root'
  group 'root'
  mode '0444'
end

include_recipe 'nginx_server::default'

nginx_server_vhost 'webserver' do
  listen [{ 'ipaddress' => '0.0.0.0' }]
  server_name [node['hostname'], node['fqdn']]
  root node['nginx-sample']['basepath']
end