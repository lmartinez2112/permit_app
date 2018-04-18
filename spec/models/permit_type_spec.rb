# == Schema Information
#
# Table name: permit_types
#
#  id         :integer          not null, primary key
#  name_type  :string
#  abb_type   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe PermitType, type: :model do

	it { should have_many(:permits) }

	it { should validate_presence_of(:name_type) }
	it { should validate_presence_of(:abb_type) }
	it { should validate_length_of(:abb_type).is_equal_to(3) }

end