class Evento < ApplicationRecord
  has_and_belongs_to_many :categoria
  has_and_belongs_to_many :voluntario
end
