class Members::UsersController < Members::MembersController
  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated your profile."
      redirect_to members_root_url
    else
      render :action => 'edit'
    end
  end
end