class ContactsController < ApplicationController
  
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params) 
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
    redirect_to thanks_path
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :message, :company, :job, :phone)
  end
end
