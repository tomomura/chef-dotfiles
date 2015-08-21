#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

git node[:dotfiles][:install_dir] do
  repository node[:dotfiles][:url]
  reference "master"
  action :checkout
  user node[:dotfiles][:user]
  group node[:dotfiles][:group]
end

execute "set zsh as default shell" do
  command "chsh -s $(which zsh) #{node[:dotfiles][:user]}"
end
