# TwentyFourTru

Ruby wrapper for 24Tru API, no frameworks required.

## Installation

Add this line to your application's Gemfile:

    gem 'TwentyFourTru'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install TwentyFourTru

## Usage
```ruby
TwentyFourTru::Client.token = 'jkfduisj97823974j2kl24899234'  #set api token

@studies = TwentyFourTru::Study.all         #Load all studies you have access to
@study = TwentyFourTru::Study.find(9999)    #Load single study

@assignments = TwentyFourTru::Assignment.all(study_id)  #Load all assignments for the given study
@assignment = TwentyFourTru::Assignment.find(assignment_id)  #Load assignment by the given id
@new_assignment = TwentyFourTru::Assignment.create(STUDY_ID, {name: 'Assignment Name', text: 'Assignment Body'})

@responses = TwentyFourTru::Assignment.all(assignment_id)  #Load all responses for the given assignment
@response = TwentyFourTru::Assignment.find(response_id)  #Load response by the given id
@new_text_response = TwentyFourTru::Response.create(ASSIGNMENT_ID, { "owner_id" => PARTICIPANT_ID, "title" => "Betty B. at the store", "text" => "I like to shop"})


```
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
