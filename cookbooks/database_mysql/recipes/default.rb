#
# Cookbook Name:: database_mysql
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

#secret = data_bag_item('secret', 'mysql')[node.chef_environment]

mysql_service 'default' do
  bind_address '127.0.0.1'
  port '3306'
  version '5.5'
  data_dir '/var/lib/mysql-chef-default'
#  initial_root_password secret['root_password']
  initial_root_password 'pass1234'
  action [:create, :start]
end

link '/etc/my.cnf' do
  to '/etc/mysql-default/my.cnf'
  mode '0644'
end
