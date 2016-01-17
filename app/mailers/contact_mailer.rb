class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.user_contact.subject
  #
  def user_contact(user_email, user_name, user_message)
    @userEmail = user_email
    @userName = user_name
    @userMessage = user_message

    mail to: "brooklyn.niche@gmail.com", subject: "Niche-ie: New Contact!"
  end

  def email_user(user_email, user_name)
    mail to: user_email, subject: "Niche-ie Designs: Thanks for contacting"
  end
end
