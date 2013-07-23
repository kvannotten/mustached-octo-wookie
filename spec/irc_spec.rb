require 'spec_helper'
require 'mustached_octo_wookie/irc'

describe MustachedOctoWookie::IRC do
  before :all do
    @irc = MustachedOctoWookie::IRC.new 'irc.freenode.net', 6667, 'octo_wookie'
  end
  
  subject { @irc }
  
  it "#new" do
    should be_an_instance_of MustachedOctoWookie::IRC
  end
  
  it "connects" do
    @irc.connect
  end
end