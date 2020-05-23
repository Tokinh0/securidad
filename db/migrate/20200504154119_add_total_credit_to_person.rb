class AddTotalCreditToPerson < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :total_credit, :float, default: 0
  end
end
