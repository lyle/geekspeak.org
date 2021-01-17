class Participant < ActiveRecord::Base
  belongs_to :episode
  belongs_to :user

  default_scope {
    includes(:user)
  }

  scope :on_air_participants, -> {
    includes(:user).
    where(participants: {role: ["host", "cohost", "guest"]})
  }

  scope :hosts, -> {
    includes(:user).
    where(participants: {role: 'host'})
  }


  validates :user_id, uniqueness: { scope: :episode_id,
    message: "is already associated with this episode." }

  accepts_nested_attributes_for :user
  
  ROLES = ["host", "cohost", "guest", "phones", "geek", "support"]

end
