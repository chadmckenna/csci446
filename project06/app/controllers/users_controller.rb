class UsersController < ApplicationController
  filter_resource_access
  before_filter :load_roles, :only => [:edit, :update]
  
  def index
    @users = User.all
  end
  
  def new
    @show_roles = false
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    #@user.role_id = Role.find_by_role_name('Member').id
    if verify_recaptcha :private_key => '6LdfOMISAAAAAIYcN8ELzwjNPagy8uGW2-dIgdsC' && @user.save
      flash[:notice] = "Successfully registered, " + @user.first_name + " " + @user.last_name + "."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated profile."
      redirect_to root_url
    else
      render :action => 'edit'
    end
  end

private  
  def load_roles
    @roles = Role.all
  end
end
