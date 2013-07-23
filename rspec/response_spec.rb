require 'TwentyFourTru'
require_relative 'spec_helper'

describe TwentyFourTru::Response do
  it 'should be able load all responses for an assignment' do
    TwentyFourTru::Response.all(ASSIGNMENT_ID).should be_a(Array)
  end

  it 'should be able to load a single response' do
    TwentyFourTru::Response.find(RESPONSE_ID).should be_kind_of(Hash)
  end
end
