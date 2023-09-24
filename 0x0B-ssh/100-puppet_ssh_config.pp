# changing configuration file using puppet 

augeas {'edit_config_file':
  context => '/files/etc/ssh/ssh_config'
  changes => [
'set PasswordAuthentication no',
'set IdentityFile ~/.ssh/school',
],
}
