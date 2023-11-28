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
exec {'sudo sed -i "53i\	location /redirect_me {\n\t\treturn 301 https://www.youtube.com;\n\t}" /etc/nginx/sites-available/default':
  provider => shell,
}

# restarting ngix
exec {'restart':
  command  => 'sudo service nginx restart',
  provider => shell,
}
