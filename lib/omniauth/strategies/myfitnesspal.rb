require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Myfitnesspal < OmniAuth::Strategies::OAuth2
      option :name, 'myfitnesspal'

      option :authorize_options, [:scope, :access_type]

      option :client_options, {
        :site             => 'https://api.myfitnesspal.com',
        :authorize_url    => '/v2/oauth2/auth',
        :token_url        => '/v2/oauth2/token'
      }

      uid { access_token['user_id'] }

    end
  end
end
