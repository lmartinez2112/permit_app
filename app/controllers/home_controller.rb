class HomeController < ApplicationController
  def index
  end

  def dashboard
    @permit_type = PermitType.all
    @permit = Permit.new
  end
end
