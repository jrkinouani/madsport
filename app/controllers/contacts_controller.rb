class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    #@contact.request = request
    if @contact.deliver
      redirect_to thanks_path
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end

  def thanks
      flash.now[:notice] = 'Thank you for your message!'
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end

