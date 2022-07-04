class ApplicationController < ActionController::Base
 before_action :redirect_to_https
  
  # before_action :add_www_subdomain

  private
  def redirect_to_https
    redirect_to :protocol => "https://www." unless (request.ssl? || request.local?)
  end
  # private
  # def add_www_subdomain
  #   unless /^www/.match(request.host)
  #     redirect_to("#{request.protocol}micromeditations.org#{request.request_uri}",
  #                 :status => 301)
  #   end
  # end
end
