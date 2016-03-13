class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.notify_comment.subject
  #
  default :from => "foobar@example.org"
  def notify_comment
    @greeting = "Hi"
    mail(:to => "hhhhbk605089@gmail.com", :subject => "New Comment")
	#mail to: "to@example.org"
  end
end
