require 'TwentyFourTru'

describe TwentyFourTru::Assignment do
  STUDY_ID = 1718
  ASSIGNMENT_ID = 13131

  it 'should be able load all assignments for a study' do
    TwentyFourTru::Assignment.all(STUDY_ID).should be_a(Array)
  end

  it 'should be able to load a single assignment' do
    TwentyFourTru::Assignment.find(ASSIGNMENT_ID).should be_kind_of(Hash)
  end
end
