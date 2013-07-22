require 'TwentyFourTru'

describe TwentyFourTru::Client do
  it 'should be able to connect to the api' do
    obj = Object.new
    TwentyFourTru::Client.stub(:new_connection).and_return(obj)
    TwentyFourTru::Client.connection.should eql(obj)
  end
end
