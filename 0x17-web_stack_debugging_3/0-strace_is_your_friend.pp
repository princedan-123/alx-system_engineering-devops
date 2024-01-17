# Changing the extension of a file using puppet

exec {'wp-settings.php':
  command => 'sudo sed -i "s/.phpp/.php/g" var/www/html/wp-settings.php',
  path    => '/bin/sed'
}
