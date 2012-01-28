require 'bundler'
Bundler.require

require 'ruby-debug'

(1..10).to_a.each do |number|
  sleep 0.13
  Thread.new do
    local_number = number
    while true
      # puts "Hello from ##{local_number}"
      sleep 1
      local_number += 1
    end
  end  
end

puts "Waiting for debugger ..."
Debugger.wait_connection = true
Debugger.start_remote

puts "Continuing..."

sleep 30
puts "Goodbye, world!"
