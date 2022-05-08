class MyController < ApplicationController
  before_action :authenticate_user!
  before_action :user

  def show; end

  def projects
    @projects = @user.projects
  end

  private

  def user
    @user ||= current_user
  end
end
