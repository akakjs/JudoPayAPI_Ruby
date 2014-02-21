require 'json'
require 'rest-client'

class JudoApiClient
  def initialize(api_token, api_secret, api_environment)
    @api_token = api_token
    @api_secret = api_secret
    @api_environment = api_environment
  end

  def get_transactions
    resource = "https://" + @api_token + ":" + @api_secret + "@" + @api_environment + '/transactions'

    response = RestClient.get resource, {
      :'Api-Version' => '2.0.0.0',
      :accept => 'application/json'
    }

    puts response
  end
end

