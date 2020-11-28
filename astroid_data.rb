require 'json'
require 'figaro'
require 'pry'
require_relative 'nasa_data'

class AstroidData < NasaData
  attr_reader :nasa_data, :date
  def initialize(date)
    @date = date
    @nasa_data = NasaData.new(@date)
  end

  def astroid_parse
    list = @nasa_data.asteroids_list_data
    binding.pry
    JSON.parse(list.body, symbolize_names: true)[:near_earth_objects][:"#{@date}"]
  end
end
