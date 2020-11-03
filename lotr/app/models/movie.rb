class Movie < ApplicationRecord
     validates :name, presence: true, uniqueness: {case_sensitive: false}
     validates :release_year, :description, presence: true
    
    has_many :movie_characters
    has_many :characters, through: :movie_characters
end
