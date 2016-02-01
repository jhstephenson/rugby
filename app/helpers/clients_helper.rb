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

module ClientsHelper
end
