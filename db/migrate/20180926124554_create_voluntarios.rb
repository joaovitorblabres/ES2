class CreateVoluntarios < ActiveRecord::Migration[5.2]
  def change
    create_table :voluntarios do |t|
      t.string :nome
      t.text :informacao
      t.string :contato
      t.string :cpf

      t.timestamps
    end
  end
end
