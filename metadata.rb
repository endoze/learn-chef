name             'learn-chef'
maintainer       'CStephan'
maintainer_email 'cstephan@squaremouth.com'
license          'MIT'
description      'Installs/Configures nginx to serve an application via reverse proxy'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'


depends 'nginx'

%w{centos ubuntu debian}.each do |os|
  supports os
end
