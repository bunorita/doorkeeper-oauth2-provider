module Api
  class CredentialsController < ::ApplicationController
    before_action :doorkeeper_authorize!

    def login
      render json: {user: current_resource_owner}
    end

    private

    def current_resource_owner
      User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
    end
  end
end
