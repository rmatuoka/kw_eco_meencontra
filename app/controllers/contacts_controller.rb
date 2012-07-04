class ContactsController < ApplicationController
  layout "blank"
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end
  
  def new_id
    @erro = true
    @provider = Provider.find_by_id(params[:id])
    if !@provider.blank?
        @provider.provider_views = @provider.provider_views + 1
        @provider.save
        @contact = Contact.new
        @erro = false
    end
  end
  
  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      UserMailer.send_email_to_provider(@contact).deliver
      redirect_to @contact, :notice => "Successfully created contact."
    else
      render :action => 'new'
    end
    
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(params[:contact])
      redirect_to @contact, :notice  => "Successfully updated contact."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to contacts_url, :notice => "Successfully destroyed contact."
  end
end
