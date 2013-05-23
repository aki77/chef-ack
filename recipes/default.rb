#
# Cookbook Name:: ack
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

remote_file node['ack']['path'] do
  source node['ack']['url']
  not_if "#{node['ack']['path']} --version | grep '^ack #{node['ack']['version']}'"
end

file node['ack']['path'] do
  mode 0755
end

template "/etc/ackrc" do
  source "ackrc.erb"
  variables({
    :extensions => node['ack']['extensions']
  })
  mode "0644"
end
