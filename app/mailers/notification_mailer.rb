class NotificationMailer < ApplicationMailer
  default from: 'no-replay@techlatam.la'
  layout 'mailer'

  def new_permit_email(permit)

    @permit = permit
    mail(to: ENV['EMAIL_TO_NOTIFY_PERMIT'], subject: 'Nuevo permiso')
  end
end
