class AddStatusToCredit < ActiveRecord::Migration[6.0]
  def change
    add_column :credits, :status, :integer, default: 0
  end
end
