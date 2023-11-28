#  using puppet to configure SSH client


exec {'configure password authentication':
  command  => '/usr/bin/sed -i "s/^#\s*PasswordAuthentication\s+no/# PasswordAuthentication yes/" /etc/ssh/ssh_config',
  provider => shell,
}

exec {'configure indentity file':
  command  => 'sed -i "39i#   IdentityFile ~/.ssh/school" /etc/ssh/ssh_config',
  provider => shell,
}
