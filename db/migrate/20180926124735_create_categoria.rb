class CreateCategoria < ActiveRecord::Migration[5.2]
  def change
    create_table :categoria do |t|
      t.string :nome

      t.timestamps
    end
    change_column(:categoria, :nome, :string, limit: 50)
  end
end
