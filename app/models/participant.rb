class Participant < ActiveRecord::Base
  belongs_to :episode
  belongs_to :user


  validates :user_id, uniqueness: { scope: :episode_id,
    message: "is already associated with this episode." }

  accepts_nested_attributes_for :user
  
  ROLES = ["host", "cohost", "guest", "phones", "geek", "support"]

  
  attr_accessible :episode_id, :user_id, :role
end
