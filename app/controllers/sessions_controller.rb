# frozen_string_literal: true

# class SessionsController < Clearance::SessionsController
class SessionsController < Clearance::SessionsController
  protected

  def url_after_create
    dashboard_path
  end
end
