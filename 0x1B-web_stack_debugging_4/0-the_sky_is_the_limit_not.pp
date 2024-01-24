# A puppet manifest that improves the limit of file descriptors for Nginx

exec {'ulimit':
  command => 'sed -i s/15/1048576/ /etc/default/nginx',
  path    => '/bin/:/usr/bin/:/usr/local/bin/'
}

exec {'restart':
  command => 'service nginx restart',
  path    => '/bin/:/usr/bin/:/usr/local/bin/'
}
