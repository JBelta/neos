require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'astroid_data'

class AstroidDataTest < Minitest::Test

  def setup
    @date = '1988-05-03'
    @astroid_data = AstroidData.new(@date)
  end

  def test_same_date
    nasa_data_date = @astroid_data.nasa_data.conn.params[:start_date]
    assert_equal @date, nasa_data_date
  end

  def test_astroid_parse
    binding.pry
  end
end
