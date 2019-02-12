chef_server_url           'https://chef-server.cloudservices-nonprod.us-east-1.aws.sysco.net/organizations/sysco'
enable_reporting          true
validation_client_name    'sysco-validator'
validation_key            '~/.chef/sysco-validator.pem'
ssl_verify_mode           :verify_none
