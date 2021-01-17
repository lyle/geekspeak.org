class User < ActiveRecord::Base
  extend FriendlyId
  friendly_id :login
  default_scope {order("current_sign_in_at desc NULLS LAST")}
  has_many :participants
  has_many :episodes, :through => :participants

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

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
  def initial
    ret = ''
    name.split(' ').each {|n|
      ret += n[0]
    }
    ret
  end
  def as_json options={}
    {
      login: login,
      display_name: display_name
    }
  end
end
