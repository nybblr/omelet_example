class UsersController < ApplicationController
  def index
		@users = User.scoped
  end

  def show
  end
end
