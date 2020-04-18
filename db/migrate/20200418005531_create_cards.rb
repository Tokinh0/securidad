class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards, id: :uuid do |t|
      t.string :number
      t.string :cvc
      t.date :expiration_date
      t.string :name
      t.date :birthdate
      t.string :cpf
      t.belongs_to :person, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
