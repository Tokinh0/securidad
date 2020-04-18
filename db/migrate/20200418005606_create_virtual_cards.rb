class CreateVirtualCards < ActiveRecord::Migration[6.0]
  def change
    create_table :virtual_cards, id: :uuid do |t|
      t.string :number
      t.string :cvc
      t.date :expiration_date
      t.belongs_to :card, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
