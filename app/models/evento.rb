# == Schema Information
#
# Table name: eventos
#
#  id         :bigint(8)        not null, primary key
#  dataEvento :date
#  horaInicio :datetime
#  horaFim    :datetime
#  latitude   :float
#  longitude  :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Evento < ApplicationRecord
  has_and_belongs_to_many :categoria
  has_and_belongs_to_many :voluntario
end
