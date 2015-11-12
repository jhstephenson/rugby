class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.date :started_on
      t.date :completed_on
      t.date :estimated_completion
      t.decimal :estimated_hours
      t.decimal :actual_hours
      t.references :user, index: true, foreign_key: true
      t.references :client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
