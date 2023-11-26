#  using puppet to configure SSH client


exec {'configure password authentication':
  command  => "/usr/bin/sed -i 's/^#\s*PasswordAuthentication\s+no/# PasswordAuthentication yes/' /etc/ssh/ssh_config",

}

exec {'configure indentity file':
  command  => "/usr/bin/sed -i 'i15IdentityFile ~/.ssh/school' /etc/ssh/ssh_config",
}
