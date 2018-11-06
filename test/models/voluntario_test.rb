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

require 'test_helper'

class VoluntarioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
