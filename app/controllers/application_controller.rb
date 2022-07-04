class ApplicationController < ActionController::Base
  before_filter :add_www_subdomain

  private
  def add_www_subdomain
    unless /^www/.match(request.host)
      redirect_to("#{request.protocol}micromeditations.org#{request.request_uri}",
                  :status => 301)
    end
  end
end
