class WeatherStation < ActiveRecord::Base
  reverse_geocoded_by :latitude, :longitude
  has_many :users
  has_many :weather_datas
  has_many :eto_calculations
end
