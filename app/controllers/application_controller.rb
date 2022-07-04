class ApplicationController < ActionController::Base
  force_ssl :host => "https://www.micromeditations.org"
  before_filter :force_secure_subdomain
end
