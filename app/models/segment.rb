class Segment < ActiveRecord::Base
  belongs_to :episode
  acts_as_list :scope => :episode
  attr_accessible :title, :episode_id, :position
end
