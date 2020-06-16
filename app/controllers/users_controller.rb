class UsersController < ApplicationController
  # skip_before_action :authorized, only: [:new, :create, :edit]

    def show
      @user = User.find(params[:id])
    end

    def new
      @user = User.new
    end

    def create
      user = User.create(user_params) 
      if user.valid?
        session[:user_id] = user.id
        if user.is_hero == false
          redirect_to user_path(user)
        else
          redirect_to edit_user_path(user)
        end
      else
        flash[:errors] = user.errors.full_messages
        redirect_to new_user_path
      end
    end

    def edit
      @user = User.find(params[:id]) 
    end

    def upgrade
      user = User.find(params[:id])
      user.update(user_params)
      if user.valid?
        session[:user_id] = user.id
        redirect_to user_path(user)
        else
          flash[:errors] = user.errors.full_messages
          redirect_to edit_user_path(user)
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        redirect_to login_path
    end
    private
    def user_params
      params.require(:user).permit!
    end
end
