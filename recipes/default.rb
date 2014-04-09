#
# Cookbook Name:: learn-chef
# Recipe:: default
#
# Copyright (C) 2014 CStephan
#
# MIT License
#

include_recipe 'nginx'

template '/etc/nginx/sites-enabled/learn_chef' do
  source 'nginx.conf.erb'
  owner 'root'
  group 'root'
  mode  0755
  notifies :restart, 'service[nginx]'
  variables(
    :app_home       => node[:learn_chef][:app_directory],
    :port           => node[:learn_chef][:port],
    :app_name       => node[:learn_chef][:user],
    :default_server => node[:learn_chef][:default_server],
    :force_ssl      => false,
    :server_name    => node[:learn_chef][:server_name],
  )
end
