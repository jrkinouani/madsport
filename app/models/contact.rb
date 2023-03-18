class Contact < MailForm::Base
  attribute :name,      validate: true
  attribute :email,     validate: /\A([\w.%+\-]+)@([\w\-]+\.)+(\w{2,})\z/i
  attribute :message
  attribute :objet

  def headers
    {
      subject: "Contact Form, #{name} #{email}",
      to: "contact@beyondboxing.fr",
      from: "contact@beyondboxing.fr"
    }
  end
  
end
