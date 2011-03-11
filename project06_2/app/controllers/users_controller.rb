class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if verify_recaptcha(:private_key => '6LdfOMISAAAAAIYcN8ELzwjNPagy8uGW2-dIgdsC') && @user.save
      flash[:notice] = "Thanks for registering, " + @user.first_name + "."
      redirect_to members_root_url
    else
      unless verify_recaptcha(:private_key => '6LdfOMISAAAAAIYcN8ELzwjNPagy8uGW2-dIgdsC')
        flash[:notice] = "reCAPTCHA didn't match. Try again."
      end
      render :action => 'new'
    end
  end
end
