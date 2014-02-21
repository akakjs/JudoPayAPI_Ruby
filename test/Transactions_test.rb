require_relative 'helper'
require_relative '../lib/judo_pay_api'

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
    client = JudoApiClient.new('RZd9e8qXQk9Fd1PL', 'b5992e1853076ca2b4d4c3e01fdeacd6b5703a47c4bb3009176e8ba597fffbb3', JudoEnvironment::SANDBOX)

    client.get_transactions

  end
end