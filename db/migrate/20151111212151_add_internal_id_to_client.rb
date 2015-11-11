class AddInternalIdToClient < ActiveRecord::Migration
  def change
    add_column :clients, :internal_id, :integer
    add_index :clients, :internal_id
  end
end
