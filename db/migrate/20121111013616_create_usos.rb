class CreateUsos < ActiveRecord::Migration
  def change
    create_table :usos do |t|
      t.references :usuario
      t.references :computadora
      t.datetime :hora_llegada
      t.datetime :hora_salida
      t.timestamps
    end
  end
end
