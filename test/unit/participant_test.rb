require 'test_helper'

class ParticipantTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Participant.new.valid?
  end
end
