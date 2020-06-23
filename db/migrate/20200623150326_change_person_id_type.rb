class ChangePersonIdType < ActiveRecord::Migration[6.0]
  def change
    remove_column :credits, :person_id, :bigint
    add_column :credits, :person_id, :uuid
  end
end
