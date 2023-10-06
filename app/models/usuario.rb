class Usuario < ActiveRecord::Base
  attr_accessible :apellido_materno, :apellido_paterno, :estado, :matricula, :nombre
  has_many :usos
  has_many :usos_recientes, :class_name => 'Uso', :conditions => ["hora_llegada.month=?",Date.today.month]
  has_one :ultimo_uso, :class_name => 'Uso', :conditions => ["hora_salida is NULL",NIL]
  has_many :computadoras, :through => :usos
  
  validates :nombre, :presence => true
  
  def full_name
    "#{nombre} #{apellido_paterno} #{apellido_materno}"
  end
  
end