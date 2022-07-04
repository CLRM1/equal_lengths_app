class ApplicationController < ActionController::Base
  force_ssl :host => "https://www.micromeditations.org"
end
