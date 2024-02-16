require "test_helper"

class EventTest < ActiveSupport::TestCase
 test "should not save event without title" do
   event = Event.new
   assert_not event.save, "Saved the event without a title"
   assert event.errors.messages[:title].include?("can't be blank"), "No validation error for title presence"
 end
 test "should not save event without description" do
  event = Event.new(title: 'Test Event')
  assert_not event.save, "Saved the event without a description"
  assert event.errors.messages[:description].include?("can't be blank"), "No validation error for description presence"
end
end
 