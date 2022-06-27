class Funcion < ApplicationRecord
  has_many :tickets
  belongs_to :pelicula
  belongs_to :sala

  def tickets_disponibles
    sala.capacidad - tickets.count
  end

  def tickets_disponibles?
    tickets_disponibles > 0
  end
  def capacidad_permitida? cantidad
    sala.capacidad >= tickets.count + cantidad.to_i
  end
end
