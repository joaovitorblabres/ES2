# == Schema Information
#
# Table name: categoria
#
#  id         :bigint(8)        not null, primary key
#  nome       :string(50)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Categorium < ApplicationRecord
  has_and_belongs_to_many :evento
  has_and_belongs_to_many :voluntario
end
