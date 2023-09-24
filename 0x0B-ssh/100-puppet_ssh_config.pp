# changing configuration file using puppet 

augeas {'edit_config_file':
  context => /etc/ssh/ssh_config
  change  => [
'set PasswordAuthentication no',
'set IdentityFile ~/.ssh/school,'
]
}
