require 'bundler'
Bundler.require

require 'ruby-debug'

puts "Hello, world!"

a = 123
debugger if fork

puts "Goodbye, world!"
