class CreateCredits < ActiveRecord::Migration[6.0]
  def change
    create_table :credits, id: :uuid do |t|
      t.references :person
      t.float :value

      t.timestamps
    end
  end
end
