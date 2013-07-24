require "mustached_octo_wookie/version"
require "mustached_octo_wookie/irc"

module MustachedOctoWookie
  attr_reader :connection
  
  def self.connect server, port, nick
    @connection = MustachedOctoWookie::IRC.new server, port, nick
    @connection.connect
    
    @connection
  end
end
