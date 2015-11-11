class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone
      t.decimal :billing_rate
      t.string :status

      t.timestamps null: false
    end
  end
end
