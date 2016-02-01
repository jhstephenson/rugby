class CreateTasklists < ActiveRecord::Migration
  def change
    create_table :tasklists do |t|
      t.references :user, index: true, foreign_key: true
      t.references :client, index: true, foreign_key: true
      t.references :project, index: true, foreign_key: true
      t.string :taskname
      t.text :description
      t.references :status, index: true, foreign_key: true
      t.decimal :estimated_time_to_complete
      t.date :start_date
      t.date :date_needed_by
      t.date :actual_date_completed
      t.decimal :actual_time_to_complete

      t.timestamps null: false
    end
  end
end
