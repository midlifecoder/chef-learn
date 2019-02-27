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
#---------------------------------------------------------------

dir = File.expand_path(File.dirname(__FILE__))
puts '============== CHEF SERVER ================='
puts " Using knife configuration in #{dir} "
puts '============================================='
log_level :info
log_location STDOUT
node_name '<chefusername>'
client_key File.join(dir,'<client.pem>')
validation_client_name '<chef-validator>'
validation_key File.join(dir,'<chef-validator>.pem')
syntax_check_cache_path File.join(dir,'syntax_check_cache')
chef_server_url 'https://<chef-server-url-or-ip.com>'
cookbook_path [ '.', '..', './cookbooks', '~/chef-repo/cookbooks' ]