class PermitsController < ApplicationController
	def create
		@permit = Permit.new(permit_params)
		@permit.user = current_user
		@permit.permit_type = PermitType.find_by(abb_type: params['permit_type'])
		@permit.permit_state = PermitState.find_by(abb_state: 'ENR')
		
		if @permit.save
			redirect_to my_permits_path, flash: { success: "Permiso creado exitosamente"}
		else
			redirect_to dashboard_root_path, flash: { error: "Hubo un error, al crear el permiso" }
		end
	end

	def my_permits
		@permits = current_user.permits.order(created_at: :desc)
	end

	def new
		@permit = Permit.new
		@permit_type = PermitType.all
		respond_to do |format|
			format.js
		end
	end

	def show
		@permit = Permit.find(params[:id])
		respond_to do |format|
			format.js
		end
	end

	def edit
		@permit = Permit.find(params[:id])
		@permit_type = PermitType.all
		respond_to do |format|
			format.js
		end
	end

	def update
		@permit = Permit.find(params[:id])

		if @permit.update(permit_params)
			redirect_to my_permits_path
		else
			render 'edit'
		end
	end		



	private

	def permit_params
		params.require(:permit).permit(:permit_reason, :permit_date_start, :permit_date_finish)
	end
end
