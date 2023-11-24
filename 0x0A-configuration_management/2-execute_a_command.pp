#  using puppet to kill a process
exec {'pkill':
  command  => '/usr/bin/pkill -SIGKILL killmenow'
}
