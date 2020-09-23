class HomeAdminController < ApplicationController
	before_action :authenticate_admin!
  def index
  end

  def dashboard
  end
end
