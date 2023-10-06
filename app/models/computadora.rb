class Computadora < ActiveRecord::Base
  has_one :ultimo_uso,
:class_name => 'Uso',
:conditions => ["hora_salida is NULL"]

  attr_accessible :descripcion, :estado, :ip
  has_many :usos
end

