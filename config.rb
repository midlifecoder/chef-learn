current_dir = File.dirname(__FILE__)
  user = ENV['OPSCODE_USER'] || ENV['<CHEF_USER>']
  node_name                <localsysname>
  client_key               "#{ENV['HOME']}/<.chef/*.pem>"
  validation_client_name   "#{ENV['ORGNAME']}-validator"
  validation_key           "#{ENV['HOME']}/.chef/#{ENV['ORGNAME']}-validator.pem"
  chef_server_url          "https://<server_url_or_ip>/organizations/#{ENV['ORGNAME']}"
  syntax_check_cache_path  "#{ENV['HOME']}/.chef/syntax_check_cache"
  cookbook_path            ["#{current_dir}/../cookbooks"]

  # Amazon AWS
  knife[:aws_access_key_id] = ENV['AWS_ACCESS_KEY_ID']
  knife[:aws_secret_access_key] = ENV['AWS_SECRET_ACCESS_KEY']
