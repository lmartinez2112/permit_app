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

class PermitType < ApplicationRecord

	has_many(:permits)

	validates :name_type, presence: true, allow_blank: false
	validates :abb_type, presence:true, allow_blank: false
	validates :abb_type, length: { is: 3 }

end
