class Uso < ActiveRecord::Base
  attr_accessible :hora_llegada, :hora_salida
  belongs_to :usuario
  belongs_to :computadora
  
end
