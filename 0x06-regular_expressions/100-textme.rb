#!/usr/bin/env ruby
puts ARGV[0].scan(/from:(\w+)\sto:(\w+)\sflags:(\w+)/).join
