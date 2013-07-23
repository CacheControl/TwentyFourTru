require 'TwentyFourTru'
require_relative 'spec_helper'

describe TwentyFourTru::Response do
  it 'should be able load all responses for an assignment' do
    TwentyFourTru::Response.all(ASSIGNMENT_ID).should be_a(Array)
  end

  it 'should be able to load a single response' do
    TwentyFourTru::Response.find(RESPONSE_ID).should be_kind_of(Hash)
  end

  it 'should be able to create new text responses' do
    response = TwentyFourTru::Response.create(ASSIGNMENT_ID, { "owner_id" => PARTICIPANT_ID, "title" => "Betty B. at the store", "text" => "this is awesome", "file" => {} })
    expected_keys = ['id', 'name', 'owner', 'insert_dt', 'url', 'video_url', 'mobile_video_url', 'thumbnail_url']
    expected_keys.each { |key| response.should have_key(key) }

    response['thumbnail_url'].should match('text_response_default')
    response['owner'].should have_key('name')
    response['owner'].should have_key('avatar_url')
  end
end
