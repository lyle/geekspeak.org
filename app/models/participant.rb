class Participant < ActiveRecord::Base
  belongs_to :episode
  belongs_to :user
	
  accepts_nested_attributes_for :user
  
	ROLES = ["host", "cohost", "guest", "phones"]
  
  attr_accessible :episode_id, :user_id, :role
end
