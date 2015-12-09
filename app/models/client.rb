class Client < ActiveRecord::Base
  has_many :projects
  has_many :daily_activities

  def self.search(query)
    where("name like ?", "%#{query}%")
  end

end