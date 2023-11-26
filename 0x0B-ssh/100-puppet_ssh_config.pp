#  using puppet to configure SSH client

include stdlib

file_line {'/etc/ssh/ssh_config':
  path  => '/etc/ssh/ssh_config',
  line  => '# PasswordAuthentication yes',
  match => '^#\s*PasswordAuthentication\s+ no',
}

file_line {'/etc/ssh/ssh_config':
  line => 'IdentityFile ~/.ssh/school',
  path => '/etc/ssh/ssh_config',
}
