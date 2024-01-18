# Changing the extension of a file using puppet

exec {'wp-settings.php':
  command => 'sed -i s/phpp/php/g var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/',
}
