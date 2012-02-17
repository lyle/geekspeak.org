class Participant < ActiveRecord::Base
  belongs_to :episode
	belongs_to :user
	
	ROLES = ["host", "cohost", "guest", "phones"]
  
  attr_accessible :episode_id, :user_id, :role
end
