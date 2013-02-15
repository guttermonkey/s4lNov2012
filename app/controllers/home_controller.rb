class HomeController < ApplicationController  
  def index
  end
  
  def novrules
  end
  
  def submit
    @submission = Submission.new(:user_id => session['internal_user_id'], :content => params[:story], :name => session['user_object']["first_name"], :pic => session['user_pic'])
    if(request.post? and @submission.save)
      @graph = session['graph_object']
      @graph.put_wall_post("I just entered to win a Mammo Screening from Screenings for Life!", {:link => "http://www.facebook.com/screeningsforlife"})
      redirect_to '/home/submissions'
    end
  end
  
  def submissions
    @submissions = Submission.all.reverse
  end
  
  def check
    @facebook_cookies = Koala::Facebook::OAuth.new.get_user_info_from_cookie(cookies)
    session['graph_object'] = Koala::Facebook::API.new(@facebook_cookies["access_token"])
    session['user_object'] = session['graph_object'].get_object("me")

    @internaluser = User.where(:facebook_id => session['user_object']["id"]).first
    if @internaluser == nil
      user = User.new(:name => session['user_object']["name"], :facebook_id => session['user_object']["id"], :gender => session['user_object']["gender"])
      user.save!
      session['internal_user_id'] = user.id
    else
      session['internal_user_id'] = @internaluser.id
      if @internaluser.gender == nil
        @internaluser.gender = session['user_object']["gender"]
        @internaluser.save!
      end
    end
    
    if Submission.where(:user_id => session['internal_user_id']).first == nil
      redirect_to '/home/november'
    else
      redirect_to '/home/submissions'
    end
    
  end
  
  def november
    session['user_pic'] = session['graph_object'].get_picture("me")
    @user = session['user_object']
    @pic = session['user_pic']
  end
  
  def resources
    @resources = Resource.all.reverse
  end
  
end
  