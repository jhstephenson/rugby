class CreateActivitytypes < ActiveRecord::Migration
  def change
    create_table :activitytypes do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
