class Categorium < ApplicationRecord
  has_and_belongs_to_many :evento
  has_and_belongs_to_many :voluntario
end
