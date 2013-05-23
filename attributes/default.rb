default['ack']['version'] = "2.04"
default['ack']['url'] = "http://beyondgrep.com/ack-#{node['ack']['version']}-single-file"
default['ack']['path'] = "/usr/local/bin/ack"

default['ack']['extensions']['js']   = %w{json coffee ejs}
default['ack']['extensions']['ruby'] = %w{erb rake feature}
default['ack']['extensions']['html'] = %w{eco jade jsp slim vm txt}
default['ack']['extensions']['css']  = %w{styl sass scss}
