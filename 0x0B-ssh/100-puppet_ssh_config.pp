# changing configuration file using puppet 

augeas {'edit_config_file':
  context => '/etc/ssh/ssh_config'
  changes => [
'set PasswordAuthentication no',
'set IdentityFile ~/.ssh/schooli',
],
}
