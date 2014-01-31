require 'json'
require 'rest-client'
require '../lib/judo_pay_api'

class JudoApiClient
  VERSION = '2.0.0.0'

  def initialize(api_token, api_secret, api_environment)
    @api_token = api_token
    @api_secret = api_secret
    @api_environment = api_environment
  end

  def get_transactions
    resource = "#{@api_environment}/transactions"

    response = RestClient.get resource, {
      :Api-Version => VERSION,
      :accept => 'application/json'
    }

    response.code
  end
end

