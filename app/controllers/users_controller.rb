class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :move_to_index, only: [:edit]
  def show
    @user = User.find(params[:id])
  end

end
