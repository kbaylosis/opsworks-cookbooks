maintainer       "Doc Ritezel"
maintainer_email "doc@minifast.co"
license          "MIT"
description      "Configure some extra stuff during OpsWorks deployment"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

provides "deploy::postgresql"

depends "deploy"
depends "database"
depends "postgresql"
