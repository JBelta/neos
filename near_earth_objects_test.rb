require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require 'json'
require_relative 'near_earth_objects'

class NearEarthObjectsTest < Minitest::Test
  def test_a_date_returns_a_list_of_neos
    results = NearEarthObjects.find_neos_by_date('2019-03-30')
    assert_equal 10, results[:astroid_list].count
    assert_equal '(2019 GD4)', results[:astroid_list][8][:name]
    #returned 2011 GE3. After viewing the list of objects, "GD4" was not the first index
  end
end
