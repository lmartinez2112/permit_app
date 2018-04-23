class PermitsController < ApplicationController
	def create
		@permit = Permit.new(permit_params)
		@permit.user = current_user
		@permit.permit_type = PermitType.find_by(abb_type: params['permit_type'])
		@permit.permit_state = PermitState.find_by(abb_state: 'ACT')
		
		if @permit.save
			redirect_to my_permits_path, flash: { success: "Permiso creado exitosamente"}
		else
			redirect_to root_path, flash: { error: "Hubo un error, al crear el permiso" }
		end
	end

	def my_permits
		@permits = current_user.permits
	end

	def show
	end

	private

	def permit_params
		params.permit(:permit_reason, :permit_date_start, :permit_date_finish)
	end
end
