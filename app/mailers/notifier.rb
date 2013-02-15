class Notifier < ActionMailer::Base
  default from: "screeningsforlife@radltd.com"
  
  def signup_email(user)
    mail(:to => user.email,
          :subject => "Thanks for signing up" )
  end
end
