require 'spec_helper'

describe MustachedOctoWookie do
  it 'should have a version number' do
    MustachedOctoWookie::VERSION.should_not be_nil
  end

  it 'should return blap' do
    MustachedOctoWookie.test.should == "blap"
  end
end
