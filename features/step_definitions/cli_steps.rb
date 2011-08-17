$: << File.expand_path('../../../lib', __FILE__)
require 'applicake'

Given /^I'm running program$/ do #'
  @app = Applicake.new
end

When /^I enter "([^"]*)"$/ do |code| #"
  @answer = @app.decode(code)
end

Then /^answer should be "([^"]*)"$/ do |answer| #"
  @answer.should == answer
end