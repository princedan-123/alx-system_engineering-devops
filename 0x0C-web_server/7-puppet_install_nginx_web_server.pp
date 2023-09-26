# installing and configuring Nginx with puppet

package {'nginx':
  ensure  => install,
}
file {'index.html':
  path    => /var/www/html/index.html,
  ensure  => file,
  content => "Hello World!",
}
