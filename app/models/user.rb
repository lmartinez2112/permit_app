# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  name                   :string
#  lastname               :string
#

class User < ApplicationRecord
	rolify
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
				 :recoverable, :rememberable, :trackable, :validatable,
				 :omniauthable, omniauth_providers: [:google_oauth2]

	has_many :permits, dependent: :destroy

	after_create :assign_default_role

	#validates :name, presence: true, allow_blank: false
	#validates :lastname, presence: true, allow_blank: false

	def self.from_omniauth(access_token)
		data = access_token.info
		user = User.where(email: data['email']).first
		unless user
			user = User.create(name: data['name'],
					email: data['email'],
					name: data['first_name'],
					lastname: data['last_name'],
					password: Devise.friendly_token[0,20]
			 )
		end
		user
	end
	private

		def assign_default_role
			self.add_role(:user) if self.roles.blank?
		end

end
