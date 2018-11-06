# == Schema Information
#
# Table name: empresas
#
#  id         :bigint(8)        not null, primary key
#  nome       :string(100)
#  contato    :string(20)
#  cpnj       :string(30)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class EmpresaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
