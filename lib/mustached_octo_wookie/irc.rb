require 'socket'

module MustachedOctoWookie
  class IRC
    attr_reader :server, :port, :nick
    
    def initialize server, port, nick
      @server = server
      @port = port
      @nick = nick
    end
    
    def connect
      @connection = TCPSocket.open(@server, @port)
      
      raw_send "USER #{@nick} mustached_octo_wookie mustached_octo_wookie :#{@nick}"
      raw_send "NICK #{@nick}"
    end
    
    def send to, message
      raw_send "PRIVMSG #{to} :#{message}"
    end
    
    private
    
    def raw_send message
        puts "[RAW MESSAGE] #{message}"
        @connection.send "#{message}\n", 0 
    end
    
  end
end