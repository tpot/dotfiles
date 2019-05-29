#
# Cookbook:: default
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

include_recipe "default::chef-solo"
include_recipe "default::bash"
include_recipe "default::scripts"

if node['platform'] == 'mac_os_x'
  include_recipe "default::osx"
end
