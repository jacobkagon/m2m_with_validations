class MovieCharacter < ApplicationRecord
    belongs_to :movie 
    belongs_to :character
end
