class ChangeTypeDocument < ActiveRecord::Migration[6.0]
  def change
    rename_column :documents, :type, :document_type
  end
end
