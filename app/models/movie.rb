class Movie < ActiveRecord::Base
  validates :name, :director, :genre, :year, :image_url, presence: true
end
