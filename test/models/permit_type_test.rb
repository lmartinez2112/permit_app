# == Schema Information
#
# Table name: permit_types
#
#  id              :integer          not null, primary key
#  name_type       :string
#  abb_type        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  type_label_html :string
#

require 'test_helper'

class PermitTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
