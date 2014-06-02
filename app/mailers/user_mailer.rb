class UserMailer < ActionMailer::Base
  default from: "welcome@cultivate.heroku.com"

  def welcome_email(user)
  	@user = user
  	@url = 'http://cultivate.heroku.com/users/sign_in'
  	mail(to: @user.email, subject: 'Welcome to Cultivate.land!')
  end

end
