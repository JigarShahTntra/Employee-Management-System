class ErrorMailer < ApplicationMailer
  def error_email(data)
    @data = data
    mail(to: 'pnidhi03@gmail.com', subject: 'Error in uploaded sheet!')
  end
end
