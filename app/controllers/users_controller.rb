# The other user-related controllers are generated by devise
class UsersController < ApplicationController

  # GET /users
  def index
    User.all
  end

  # GET /users/:id
  def show
    User.find_by(id: params[:id])
  end

end