# installs flash version 2.1.0 using puppet

package {'flask':
  ensure   => '2.1.0',
  provider => 'pip3'
}
exec {'dependency':
  command => '/usr/bin/pip install Werkzeug==2.1.0',
  require => Package['flask']
}
