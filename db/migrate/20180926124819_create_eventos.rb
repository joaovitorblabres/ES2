class CreateEventos < ActiveRecord::Migration[5.2]
  def change
    create_table :eventos do |t|
      t.date :dataEvento
      t.datetime :horaInicio
      t.datetime :horaFim
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
