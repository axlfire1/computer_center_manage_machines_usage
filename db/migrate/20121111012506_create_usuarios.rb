class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :matricula
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.integer :estado

      t.timestamps
    end
  end
end
