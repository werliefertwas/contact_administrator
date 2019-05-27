class ContactMailer < ApplicationMailer
  def notify_admin(contact)
    @contact = contact
    mail(to: 'admin@example.com', subject: 'New contact was created')
  end
end
