# == Schema Information
#
# Table name: permits
#
#  id                 :integer          not null, primary key
#  permit_reason      :text
#  permit_date_start  :datetime
#  permit_date_finish :datetime
#  permit_type_id     :integer
#  permit_state_id    :integer
#  user_id            :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  code_permit        :string
#  permit_time_start  :time
#  permit_time_finish :time
#

require 'test_helper'

class PermitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
