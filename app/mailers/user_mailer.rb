class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.notify_comment.subject
  #
  default :from => "hhhhbk605089@gmail.com"
  def send_email(user,course)
    @user_email = user.email
    @user_name =  user.name
    @user_phone = user.phone
    @course_name = course.name
    @course_time = "2016/03/19"


    mail(:to => user.email, :subject => "Donchi課程 報名成功!")

  end


end
