class Client < ActiveRecord::Base
  has_many :projects
  has_many :daily_activities

end