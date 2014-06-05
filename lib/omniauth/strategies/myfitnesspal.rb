require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Myfitnesspal < OmniAuth::Strategies::OAuth2
      option :name, 'myfitnesspal'

      option :client_options, {
        :site          => 'https://www.myfitnesspal.com',
        :authorize_url => '/oauth2/authorize',
        :token_url     => '/oauth2/token'
      }
    end
  end
end
