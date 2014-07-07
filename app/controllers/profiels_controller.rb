class ProfilesController < ApplicationController

#before_action :authorize, only: [:index]

  def index
    @user = current_user
    
  end

end