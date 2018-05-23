class ReportsController < ApplicationController
  def users
    #@permits = Permit.group(:user_id).count
    hash_permits = {}
    User.all.each do |u|
      hash_permits["#{u.email}"] = u.permits.count
    end
    @permits = hash_permits
  end
end
