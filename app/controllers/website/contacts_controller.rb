class Website::ContactsController < ApplicationController
  def new
    @contact = Contact.new 
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save 
      flash[:notice] = "Thanks for contacting us and our team will respond to you as soon as possible"
      redirect_to root_url
    else  
        render 'new'
    end
  end
  


  private 
  def contact_params 
    params.require(:contact).permit(:email, :subject, :message)
  end
end