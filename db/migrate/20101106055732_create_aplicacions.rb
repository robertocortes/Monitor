class CreateAplicacions < ActiveRecord::Migration
  def self.up
    create_table :aplicacions do |t|
      t.string :nombre_camara
      t.string :ip
      t.string :ubicacion
      t.string :modelo
      t.string :numero_de_serie
      t.string :marca
      t.string :etiqueta

      t.timestamps
    end
  end

  def self.down
    drop_table :aplicacions
  end
end
