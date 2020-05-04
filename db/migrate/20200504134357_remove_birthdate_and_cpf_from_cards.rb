class RemoveBirthdateAndCpfFromCards < ActiveRecord::Migration[6.0]
  def change
    remove_column :cards, :birthdate
    remove_column :cards, :cpf
  end
end
