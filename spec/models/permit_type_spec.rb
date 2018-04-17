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

end