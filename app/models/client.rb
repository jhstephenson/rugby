# == Schema Information
#
# Table name: clients
#
#  id             :integer          not null, primary key
#  name           :string
#  address_line_1 :string
#  address_line_2 :string
#  city           :string
#  state          :string
#  zip            :string
#  phone          :string
#  contact_name   :string
#  contact_email  :string
#  contact_phone  :string
#  billing_rate   :decimal(, )
#  status         :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  internal_id    :integer
#
# Indexes
#
#  index_clients_on_internal_id  (internal_id)
#

class Client < ActiveRecord::Base
  include Filterable

  has_many :projects
  has_many :daily_activities
  has_many :messages

  scope :client_name, -> (client_name) { where("name like ?", "%#{client_name}%") }

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |client|
        csv << client.attributes.values_at(*column_names)
      end
    end
  end

end
