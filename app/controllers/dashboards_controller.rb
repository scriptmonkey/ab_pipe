# frozen_string_literal: true

# class DashboardsController < ApplicationController
class DashboardsController < ApplicationController
  def show
    redirect_to sign_in_path unless signed_in?
  end
end
