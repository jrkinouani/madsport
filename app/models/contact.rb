class Contact < MailForm::Base
  attribute :email,     validate: /\A([\w.%+\-]+)@([\w\-]+\.)+(\w{2,})\z/i
  attribute :first_name,      validate: true
  attribute :last_name,      validate: true
  attribute :company
  attribute :phone
  attribute :job
  attribute :message

  def headers
    {
      subject: "Contact Form, #{first_name} #{last_name} #{email}",
      to: "contact@beyondboxing.fr",
      from: "contact@beyondboxing.fr"
    }
  end
  
end
