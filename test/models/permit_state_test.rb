# == Schema Information
#
# Table name: permit_states
#
#  id               :integer          not null, primary key
#  name_state       :string
#  abb_state        :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  state_label_html :string
#

require 'test_helper'

class PermitStateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
