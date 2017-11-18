require 'test_helper'

class AustauschschulerTest < ActiveSupport::TestCase

  def setup
    @austauschschuler = Austauschschuler.new(name: "Name", family_name: "Family Name", birthday: :date, email: "user@example.com", departure_time: , arrival_time:)
  end

  test "should be valid" do
    assert @austauschschuler.valid?
  end

  test "name should be present" do
    @austauschschuler.name = "     "
    assert_not @austauschschuler.valid?
  end

  test " family name should be present" do
    @austauschschuler.family_name = "     "
    assert_not @austauschschuler.valid?
  end


end
