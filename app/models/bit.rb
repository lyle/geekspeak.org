class Bit < ActiveRecord::Base
  attr_accessible :title, :url, :user_id, :body, :status
end
