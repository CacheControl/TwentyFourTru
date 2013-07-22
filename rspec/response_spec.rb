require 'TwentyFourTru'

describe TwentyFourTru::Response do
  ASSIGNMENT_ID = 13131
  RESPONSE_ID = 272542

  it 'should be able load all responses for an assignment' do
    TwentyFourTru::Response.all(ASSIGNMENT_ID).should be_a(Array)
  end

  it 'should be able to load a single response' do
    TwentyFourTru::Response.find(RESPONSE_ID).should be_kind_of(Hash)
  end
end
