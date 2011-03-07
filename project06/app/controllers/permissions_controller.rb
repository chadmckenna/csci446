class PermissionsController < ApplicationController
  def new
    @permission = Permission.new
  end

  def create
    @permission = Permission.new(params[:permission])
    if @permission.save
      flash[:notice] = "Successfully created permission."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end

  def destroy
    @permission = Permission.find(params[:id])
    @permission.destroy
    flash[:notice] = "Successfully destroyed permission."
    redirect_to root_url
  end
end
