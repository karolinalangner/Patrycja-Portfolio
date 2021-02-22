class ContactsController < ApplicationController

  def new 
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
  redirect_to kontakt_path, notice: 'Wiadomość została wysłana'
    else
      flash.now[:error] = 'Nie udało się wysłać wiadomości'
      render :new
    end
  end
end