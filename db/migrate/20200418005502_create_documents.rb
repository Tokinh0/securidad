class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents, id: :uuid do |t|
      t.string :number
      t.integer :type
      t.belongs_to :person, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
