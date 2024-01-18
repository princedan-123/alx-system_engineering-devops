# Change all .phpp extension to .php

exec {'wp-settings.php':
  command => 'sed -i s/phpp/php/g var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/',
}
