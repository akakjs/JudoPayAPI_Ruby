require 'helper'

class ListTransactions < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  # Fake test
  def test_fail
    client = JudoApiClient.new('123', '543', JudoEnvironment::SANDBOX)

    client.get_transactions

  end
end