# A puppet manifest that installs nginx and configures it

# installation
package {'nginx':
  ensure  => installed,
}

# testing
file {'/var/www/html/index.html':
  ensure  => present,
  path    => '/var/www/html/index.html',
  content => 'Hello World!',
}
# handling redirection
$redirect="\\\tlocation /redirect_me {\n\t\treturn 301 https://www.youtube.com;\n\t}"
exec {'edit_config_file':
  command => '/usr/bin/sed -i "53i${redirect}" /etc/nginx/sites-available/default',
}

# restarting ngix
exec {'restart':
  command => '/usr/sbin/service nginx restart',
}
