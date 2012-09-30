#
# Cookbook Name:: git
# Recipe:: git-extensions
#
# Copyright 2012, Stuart Caborn
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

if node[:platform] == "windows"
  windows_package "git_extensions" do
    source node[:git][:git_extensions_url]
    action :install
    not_if { File.exists? 'C:\Program Files (x86)\GitExtensions\GitExtensions.exe' }
  end
end