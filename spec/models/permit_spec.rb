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

require 'rails_helper' 

RSpec.describe Permit, type: :model do

	it { should belong_to(:permit_type) }
	it { should belong_to(:permit_state) }
	it { should belong_to(:user) }

end