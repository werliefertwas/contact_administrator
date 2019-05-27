class ContactService
  class << self
    def notify_admin(contact)
      ApiRequest.new.sample_call
      ContactMailer.notify_admin(contact).deliver_now
    end
  end
end