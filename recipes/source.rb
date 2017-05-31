#
# Cookbook Name:: openh264
# Recipe:: source
# Author:: Felipe Cecagno (<felipe@mconf.com>)
#
# This file is part of the Mconf project.
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#

package "nasm"

creates_openh264 = "/usr/local/lib/pkgconfig/openh264.pc"

file creates_openh264 do
  action :nothing
end

git node['openh264']['source_path'] do
  repository "https://github.com/cisco/openh264.git"
  reference "v#{node['openh264']['version']}"
  action :sync
  notifies :delete, "file[#{creates_openh264}]", :immediately
end

bash "extract-openh264-src" do
  cwd node['openh264']['source_path']
  code <<-EOF
    make && make install
  EOF
  not_if { ::File.exist?(creates_openh264) }
end

remote_file "#{node['openh264']['binary_path']}.bz2" do
  source node['openh264']['binary_url']
  not_if { ::File.exist?(node['openh264']['binary_path']) }
end

bash "extract-libopenh264-lib" do
  cwd "/usr/local/lib"
  code <<-EOF
    bunzip2 #{node['openh264']['binary_path']}.bz2
  EOF
  not_if { ::File.exist?(node['openh264']['binary_path']) }
end

link "/usr/local/lib/libopenh264.so" do
  to node['openh264']['binary_path']
end
