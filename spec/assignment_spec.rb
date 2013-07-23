require 'TwentyFourTru'
require_relative 'spec_helper'

describe TwentyFourTru::Assignment do
  it 'should be able load all assignments for a study' do
    TwentyFourTru::Assignment.all(STUDY_ID).should be_a(Array)
  end

  it 'should be able to load a single assignment' do
    TwentyFourTru::Assignment.find(ASSIGNMENT_ID).should be_kind_of(Hash)
  end

  it 'should be able to create new assignments' do
    response = TwentyFourTru::Assignment.create(STUDY_ID, {name: 'Assignment Name', text: 'Assignment Body'})
    expected_keys = ['id', 'name', 'text', 'url', 'video_url', 'responses_url']
    expected_keys.each { |key| response.should have_key(key) }
  end
end
