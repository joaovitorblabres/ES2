class CreateEmpresas < ActiveRecord::Migration[5.2]
  def change
    create_table :empresas do |t|
      t.string :nome
      t.string :contato
      t.string :cpnj

      t.timestamps
    end
    change_column_null(:empresas, :cpnj, true)
    change_column(:empresas, :contato, :string, limit: 20)
    change_column(:empresas, :cpnj, :string, limit: 30)
    change_column(:empresas, :nome, :string, limit: 100)
  end
end
