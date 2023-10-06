class CreateComputadoras < ActiveRecord::Migration
  def change
    create_table :computadoras do |t|
      t.string :descripcion
      t.string :ip
      t.boolean :estado

      t.timestamps
    end
  end
end
