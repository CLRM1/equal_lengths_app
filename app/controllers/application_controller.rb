class ApplicationController < ActionController::Base
  force_ssl
  before_filter :force_secure_subdomain
end
