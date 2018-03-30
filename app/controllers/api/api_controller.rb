module Api
  class ApiController < ActionController::Base
    before_action :restrict_access

    private

    def access_key
      request.headers['access-key']
    end

    def api_token
      request.headers['api-token']
    end

    def current_user
      @current_user ||= User.find_by_api_token(api_token)
    end

    def api_key
      @api_key ||= ApiKey.find_by_access_key(access_key)
    end

    def restrict_access
      head :unauthorized unless api_key
    end

    def authenticate_user!
      head :unauthorized unless current_user
    end
  end
end