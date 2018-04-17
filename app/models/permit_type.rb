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

class PermitType < ApplicationRecord

	has_many(:permits)

end
