class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :user, index: true, foreign_key: true
      t.references :client, index: true, foreign_key: true
      t.string :name
      t.datetime :received
      t.string :phone
      t.string :cell
      t.text :message
      t.boolean :telephoned
      t.boolean :returned_your_call
      t.boolean :please_call
      t.boolean :will_call_again
      t.boolean :came_to_see_you
      t.boolean :wants_to_see_you
      t.boolean :other
      t.text :other_text
      t.string :status
      t.string :taken_by
      t.datetime :resolved
      t.string :from

      t.timestamps null: false
    end
  end
end
