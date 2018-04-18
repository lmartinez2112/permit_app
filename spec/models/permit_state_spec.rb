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
require 'rails_helper'

RSpec.describe PermitState, type: :model do

	it { should have_many(:permits) }

	it { should validate_presence_of(:name_state) }
	it { should validate_presence_of(:abb_state) }
	it { should validate_length_of(:abb_state).is_equal_to(3) }
end 
 