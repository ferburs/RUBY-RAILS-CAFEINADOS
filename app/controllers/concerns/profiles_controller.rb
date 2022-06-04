class ProfilesController < ApplicationController

  before_action :set_profile

  def show
    @profile
  end

  def edit

  end

  def update

  end

  private
  def set_profile
    @profile = (current_user.profile || Profile.create)
  end

end