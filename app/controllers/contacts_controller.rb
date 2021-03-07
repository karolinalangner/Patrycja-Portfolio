class ContactsController < ApplicationController

  def new 
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      ContactMailer.new_request(@contact.id)
      flash.now[:error] = nil
      redirect_to kontakt_path, notice: 'Wiadomość została wysłana'
    else
      flash.now[:error] = 'Nie udało się wysłać wiadomości'
      render 'pages/kontakt'
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

end