class UsersController < ApplicationController
  def new
    @title = "Sign Up"
  end

  def show
  	@user = User.find(1)
  end

end