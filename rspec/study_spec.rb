require 'TwentyFourTru'

describe TwentyFourTru::Study do
  STUDY_ID = 1718
  it 'should be able to load a single study' do
    TwentyFourTru::Study.find(STUDY_ID).should be_a(Object)
  end

  it 'should be able load all studies' do
    TwentyFourTru::Study.all.should be_a(Array)
  end
end
