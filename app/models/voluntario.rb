# == Schema Information
#
# Table name: voluntarios
#
#  id         :bigint(8)        not null, primary key
#  nome       :string
#  informacao :text
#  contato    :string
#  cpf        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Voluntario < ApplicationRecord
  has_and_belongs_to_many :categoria
  has_and_belongs_to_many :evento
end
