# Changing the extension of a file using puppet

exec {'wp-settings.php':
  command => 'sed -i "s/.phpp/.php/g" var/www/html/wp-settings.php',
  path    => '/bin:/usr/bin:/usr/local/bin',
}
