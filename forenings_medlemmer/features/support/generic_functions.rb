def test_connection?
  require 'socket'
  request = "HEAD / HTTP/1.0\r\n\r\n"
  address_port = $address.to_s.split(':')
  if address_port[1].nil?
    address_port[1] = "80"
  end
  begin
    socket = TCPSocket.open(*address_port)  # Connect to server
    socket.print(request)                   # Send request
    response = socket.read                  # Read complete response
    return true
  rescue Errno::ECONNREFUSED
    return false
  rescue
  	return false
  else
    return false
  ensure
  	if not socket.nil?
    	socket.close
    end
  end
end

def take_screenshot(scenario="")
  current_time = Time.now.strftime("%H:%M:%S_")
  if scenario.nil? || scenario.empty?
    image_path = "screenshots/" + current_time + '.png'
  else
    image_path = "screenshots/" + current_time + scenario.gsub(/\s+/, "_").gsub("/","_") + '.png'
  end
  $driver.save_screenshot(image_path)
  puts "Saved a screenshot at \"#{image_path}\"."
end
