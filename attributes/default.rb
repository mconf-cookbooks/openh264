#
# This file is part of the Mconf project.
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#

default['openh264']['install_method'] = "source"

default['openh264']['version'] = "1.6.0"
default['openh264']['binary_repo'] = "http://ciscobinary.openh264.org"
default['openh264']['binary_name'] = "libopenh264-#{node.default['openh264']['version']}-linux64.so"
default['openh264']['binary_url'] = "#{node.default['openh264']['binary_repo']}/#{node.default['openh264']['binary_name']}.bz2"
default['openh264']['binary_path'] = "/usr/local/lib/cisco-libopenh264-#{node.default['openh264']['version']}.so"

default['openh264']['git_revision'] = "69a8b3c3ea627f9e680cb34a9793b3a83171860d"
default['openh264']['source_repo'] = "https://github.com/cisco/openh264.git"
default['openh264']['source_path'] = "/usr/local/src/openh264"
