# frozen_string_literal: true

# If a user is not logged in, redirect them to the login page. If they are logged in, but don't have
# access to the requested resource, redirect them to the root page.
class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  rescue_from CanCan::AccessDenied do |_exception|
    respond_to do |format|
      format.json { head :forbidden }
      format.html { redirect_to root_path }
    end
  end
end
