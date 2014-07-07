class UsersController < ApplicationController

before_action :authorize, except: [:index, :new, :show, :create]



def index
  @user = current_user
  @users = User.all

end

def new
  @user = User.new #form partial
  #show a form
end

def create
@user = User.create(user_params)
#params.require(:user).permit(:name))
    
 if @user.save
      redirect_to users_path
    else
      render 'users/new'
    end
end

def edit

@user = User.find(params[:id])
#form
end

def update
edited_user = User.find(params[:id])
edited_user.update(params.require(:user).permit(:name))
#update 
redirect_to "/users/#{edited_user.id}"
end

 def show
    @user = User.find(params[:id])
    #show me user page
  end
  
  def destroy
    User.delete(params[:id])
    # redirect_to chefs_path
    redirect_to log_out_path, method: :delete
  end

private
def user_params
  params.require(:user).permit(:name, :password, :password_confirmation )
end

end