server_name = "52.18.46.229"
api_fqdn = server_name
nginx['url'] = "https://#{server_name}"
nginx['server_name'] = server_name
lb['fqdn'] = server_name
bookshelf['vip'] = server_name