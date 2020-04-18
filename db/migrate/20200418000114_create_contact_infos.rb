class CreateContactInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_infos, id: :uuid do |t|
      t.string :email
      t.string :mobile_phone
      t.string :phone
      t.belongs_to :person, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
