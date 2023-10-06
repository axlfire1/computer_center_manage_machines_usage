class CreateConsultaUsos < ActiveRecord::Migration
  def change
    create_table :consulta_usos do |t|

      t.timestamps
    end
  end
end
