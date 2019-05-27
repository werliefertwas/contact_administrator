class ContactsController < ApplicationController
  before_action :set_contact, only: [:show]

  # GET /contacts/1
  def show
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # POST /contacts
  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      ::ContactService.notify_admin(@contact)
      redirect_to @contact, notice: 'Contact was successfully created.'
    else
      render :new
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:last_name, :phone, :body)
    end
end
