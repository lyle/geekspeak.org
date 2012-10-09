class User < ActiveRecord::Base
  extend FriendlyId
  friendly_id :login
  has_many :participants
  has_many :episodes, :through => :participants
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable, :registerable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :login, :display_name, :admin, :active
  def is_admin?
    self.admin
  end
  def active_for_authentication?
    super && active
  end
  
  def inactive_message
    "Sorry, this account is not active."
  end
  def name
     display_name || login 
  end
end
