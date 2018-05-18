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

require 'rails_helper' 

RSpec.describe Permit, type: :model do

	it { should belong_to(:permit_type) }
	it { should belong_to(:permit_state) }
	it { should belong_to(:user) }

	it { should validate_presence_of(:permit_reason) }
	it { should validate_presence_of(:permit_date_start) }
	it { should validate_presence_of(:permit_date_finish) }
	it { should validate_presence_of(:permit_type) }
	it { should validate_presence_of(:permit_state) }
	it { should validate_presence_of(:user) }

end
