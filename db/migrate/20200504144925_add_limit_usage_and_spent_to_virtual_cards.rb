class AddLimitUsageAndSpentToVirtualCards < ActiveRecord::Migration[6.0]
  def change
    add_column :virtual_cards, :usage_limit, :integer, default: 0
    add_column :virtual_cards, :spent_limit, :float, default: 0
  end
end
