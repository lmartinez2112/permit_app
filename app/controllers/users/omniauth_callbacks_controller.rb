class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
	def google_oauth2
		@user = User.from_omniauth(request.env['omniauth.auth'])
		#if @user.persisted?
		if !@user.nil?
			flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
			sign_in_and_redirect @user, event: :authentication
		else
			session['devise.google_data'] = request.env['omniauth.auth'].except(:extra) # Removing extra as it can overflow some session stores
			alert = 'Error en authentication'
			if !['techlatam.la','sigcapitales.com'].include? request.env['omniauth.auth'].except(:extra).info.email.split('@')[1]
				alert = 'Solamente los siguientes correos electrónicos son válidos: techlatam.la y sigcapitales.com'
			end
			redirect_to new_user_registration_url, alert: alert
		end
	end
end