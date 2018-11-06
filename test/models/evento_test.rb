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

require 'test_helper'

class EventoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
