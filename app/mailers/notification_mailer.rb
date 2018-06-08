class NotificationMailer < ApplicationMailer
  default from: 'no-replay@techlatam.la'
  layout 'mailer'

  def new_permit_email(permit)

    @permit = permit
    mail(to: "#{permit.user.email}", subject: 'Nuevo permiso')
  end
end
