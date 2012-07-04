class DevelopmentMailInterceptor
  def self.delivering_email(message)
    message.subject = "---=== Eco_me_encontra teste de Email ===---"
    message.to = "cnascimento@korewa.com.br"
    message.bcc = "cnascimento@korewa.com.br"
  end
end
