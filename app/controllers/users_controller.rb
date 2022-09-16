class UsersController < ApplicationController
  def index
    @users=User.all
  end
  def new
    @user=User.new
  end
  def mypage
  end
  def show

  end
  def create
    user=User.new(user_params)
    if user.save
      login(user)
      redirect_to root_path
    else
      render :new
    end
  end
  def delete

  end
private
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end
end