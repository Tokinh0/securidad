class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people, id: :uuid do |t|
      t.string :name
      t.date :birth_date
      t.integer :gender

      t.timestamps
    end
  end
end
