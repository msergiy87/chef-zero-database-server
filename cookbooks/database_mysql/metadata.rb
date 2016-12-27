name 'database_mysql'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'all_rights'
description 'Installs/Configures database_mysql'
long_description 'Installs/Configures database_mysql'
version '0.1.0'

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Issues` link
# issues_url 'https://github.com/<insert_org_here>/database_mysql/issues' if respond_to?(:issues_url)

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Source` link
# source_url 'https://github.com/<insert_org_here>/database_mysql' if respond_to?(:source_url)

depends 'apt', '5.0.1'
depends 'mysql', '8.2.0'
