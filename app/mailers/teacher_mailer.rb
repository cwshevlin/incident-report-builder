class TeacherMailer < ActionMailer::Base
  default from: "no-reply@stuccostuc.co"

  def welcome_email(teacher)
  	@teacher = teacher
  	mail(to: @teacher.email, subject: 'Welcome to Stucco!')
  end

end