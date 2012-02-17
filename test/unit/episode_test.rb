require 'test_helper'

class EpisodeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Episode.new.valid?
  end
end
