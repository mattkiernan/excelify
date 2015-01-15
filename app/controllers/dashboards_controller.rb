class DashboardsController < ApplicationController
  def show
    user = current_user
    @documents = user.documents
  end
end
