class UserMailer < ActionMailer::Base
  default :from => "Eco Me Encontra<no-reply@korewa.com.br>"
  
  def send_email_password_reset(user)
    @user = user
		mail(:to => user.email, :subject => "Instruções para trocar a senha")
	end
  def send_email_to_provider(contact)
    @contact = contact
		mail(:to => @contact.provider.e_mail, :subject => "Novo Contato")
	end	
end
