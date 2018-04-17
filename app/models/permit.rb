# == Schema Information
#
# Table name: permits
#
#  id                 :integer          not null, primary key
#  permit_reason      :string
#  permit_date_start  :date
#  permit_date_finish :date
#  permit_type_id     :integer
#  permit_state_id    :integer
#  user_id            :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Permit < ApplicationRecord
  belongs_to :permit_type
  belongs_to :permit_state
  belongs_to :user
end
