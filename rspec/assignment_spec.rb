require 'TwentyFourTru'

describe TwentyFourTru::Assignment do
  STUDY_ID = 1718

  it 'should be able load all assignments' do
    TwentyFourTru::Assignment.all(STUDY_ID).should be_a(Array)
  end
end
