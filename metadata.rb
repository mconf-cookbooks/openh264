name             'openh264'
maintainer       'Mconf Tecnologia'
maintainer_email 'felipe@mconf.com'
license          'MPLv2'
description      'Installs/Configures libopenh264'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
recipe "openh264::default", "Wrapper for the source recipe"
recipe "openh264::source", "Install openh264 by source"
