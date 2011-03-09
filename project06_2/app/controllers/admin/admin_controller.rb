class Admin::AdminController < ApplicationController
  layout "admin"
  before_filter :require_user
  #acts_as_authentic
  filter_access_to :all
  def index
    #render :text => "Admin area"
  end
end