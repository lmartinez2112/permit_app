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
#

class Permit < ApplicationRecord
  belongs_to :permit_type
  belongs_to :permit_state
  belongs_to :user

  after_create :assing_code_permit

  validates :permit_reason, presence: true, allow_blank: false
  validates :permit_date_start, presence: true, allow_blank: false
  validates :permit_date_finish, presence: true, allow_blank: false
  validates :permit_type, presence: true
  validates :permit_state, presence: true
  validates :user, presence: true

  private

    def assing_code_permit
      c = Permit.where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day).count
      t = Time.zone.now.strftime('%Y%m%d')
      self.update(code_permit: "PER"+t+c.to_s)
    end
  
end
