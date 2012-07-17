require File.dirname(__FILE__) + '/../spec_helper'

describe Ticket do
  it "should be valid" do
    Ticket.new.should be_valid
  end
end
