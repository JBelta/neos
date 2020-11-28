require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'nasa_data'

class NasaDataTest < Minitest::Test

  def setup
    @nasa_data = NasaData.new('1988-05-03')
  end

  def test_asteroid_list_data
    result = @nasa_data.asteroids_list_data
    expected = "https://api.nasa.gov/neo/rest/v1/feed?api_key&start_date=1988-05-03"
    #binding.pry
    assert_equal "#{result.env.url}", expected
  end
end
