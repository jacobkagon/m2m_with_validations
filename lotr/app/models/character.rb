class Character < ApplicationRecord
    validates :name, presence: true, uniqueness: {case_sensitive: false}
    validates :location, presence: true
    
    has_many :movie_characters
    has_many :movies, through: :movie_characters
end
