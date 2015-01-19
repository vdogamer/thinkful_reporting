class Report < ActiveRecord::Base
  has_many :roles
  has_one :user, through: :user
  
  resourcify
end
