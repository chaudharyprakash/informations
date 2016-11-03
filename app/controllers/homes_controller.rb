class HomesController < ApplicationController
require 'socket' 
  def index
  	# hostname = 'localhost'
		# port = 3000
		# s = TCPSocket.open(hostname, port)
		ip = Socket.ip_address_list.detect{|intf| intf.ipv4_private?}
		ip_address = ip.ip_address if ip
		pc_name = Socket.gethostname
		p "#{request.protocol}==#{request.host}===#{request.port}====name====#{Socket.gethostname}======#{ENV['USERDOMAIN']}=====#{request.env['LOGONSERVER']}"
		@information = Information.create(ip: ip_address,pc_name: pc_name)
  end
end
