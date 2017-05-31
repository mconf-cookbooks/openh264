#
# Cookbook Name:: openh264
# Recipe:: default
# Author:: Felipe Cecagno (<felipe@mconf.com>)
#
# This file is part of the Mconf project.
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#

case node['openh264']['install_method']
when 'source'
  include_recipe 'openh264::source'
end
