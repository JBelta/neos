require 'faraday'
require 'figaro'
require 'pry'

class NasaData
  attr_reader :conn

  def initialize(date)
    @conn = Faraday.new(
      url: 'https://api.nasa.gov',
      params: { start_date: date, api_key: ENV['nasa_api_key']}
    )
  end

  def asteroids_list_data
    @conn.get('/neo/rest/v1/feed')
  end
end
