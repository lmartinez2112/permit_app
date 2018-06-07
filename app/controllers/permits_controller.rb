class PermitsController < ApplicationController
	before_action :require_login

	def index
		if current_user.has_role? 'admin'
			@permits = Permit.all.order(created_at: :desc)
		else
			redirect_to my_permits_path
		end
	end

	def create
		@permit = Permit.new(permit_params)
		@permit.user = current_user
		@permit.permit_type = PermitType.find_by(abb_type: params['permit']['permit_type'])
		@permit.permit_state = PermitState.find_by(abb_state: 'ENR')
		if @permit.save
			redirect_to my_permits_path, flash: { success: "Permiso creado exitosamente"}
		else
			redirect_to my_permits_path, flash: { error: "Hubo un error, al crear el permiso" }
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

	def destroy
		Permit.find(params[:id]).delete
		redirect_to my_permits_path
	end

	def change_state
		Permit.find(params[:id]).update(permit_state: PermitState.find_by(abb_state: params[:state]))
		redirect_to permits_path
	end

	def edit
		@permit = Permit.find(params[:id])
		@permit.permit_date_start = @permit.permit_date_start.strftime('%d/%m/%Y')
		@permit.permit_date_finish = @permit.permit_date_finish.strftime('%d/%m/%Y')
		@permit.permit_time_start = @permit.permit_time_start.strftime('%H:%M %p')
		@permit.permit_time_finish = @permit.permit_time_finish.strftime('%H:%M %p')
		@permit_type = PermitType.all
		respond_to do |format|
			format.js
		end
	end

	def update
		@permit = Permit.find(params[:id])

		if @permit.update(permit_params)
			@permit.update(permit_type: PermitType.find_by(abb_type: params['permit']['permit_type']))
			redirect_to my_permits_path, flash: { success: "Permiso actualizado exitosamente"}
		else
			render 'edit'
		end
	end		



	private

	def permit_params
		params.require(:permit).permit(:permit_reason, :permit_date_start, :permit_date_finish, :permit_time_start, :permit_time_finish)
	end

	def require_login
    unless current_user
      redirect_to root_path
    end
  end
end
