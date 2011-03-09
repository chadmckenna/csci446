class Members::MembersController < ApplicationController
  layout 'member'
  before_filter :require_user
  #acts_as_authentic
  filter_access_to :all
  def index
    
  end
end