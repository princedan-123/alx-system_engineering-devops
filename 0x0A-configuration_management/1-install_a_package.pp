# installs flash version 2.1.0 using puppet

exec {'flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
}
