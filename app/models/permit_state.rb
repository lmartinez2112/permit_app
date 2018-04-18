# == Schema Information
#
# Table name: permit_states
#
#  id         :integer          not null, primary key
#  name_state :string
#  abb_state  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PermitState < ApplicationRecord
	has_many(:permits)

	validates :name_state, presence: true, allow_blank: false
	validates :abb_state, presence: true, allow_blank: false
	validates :abb_state, length: { is: 3 }
end
