class Admin::AdminController < ApplicationController
  layout "admin"
  acts_as_authentic
  def index
    #render :text => "Admin area"
  end
end