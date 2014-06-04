#
# Cookbook Name:: tmux
# Recipe:: default
#
# Copyright 2014, Ouroboros
#
# All rights reserved - Do Not Redistribute
#

package 'tmux'

#Drop the tmux configuration template
template '/etc/tmux.conf' do
  source  'tmux.conf.erb'
  mode    '0644'
end
