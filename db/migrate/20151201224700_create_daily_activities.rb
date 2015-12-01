class CreateDailyActivities < ActiveRecord::Migration
  def change
    create_table :daily_activities do |t|
      t.date :date
      t.references :client, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.decimal :hours
      t.string :description
      t.boolean :billable
      t.decimal :rate
      t.references :project, index: true, foreign_key: true
      t.boolean :merged

      t.timestamps null: false
    end
  end
end
