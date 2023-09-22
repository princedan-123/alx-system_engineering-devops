# using puppet manager to kill a process

exec { 'kill':
  command => '/usr/bin/pkill -SIGKILL killmenow',
}
