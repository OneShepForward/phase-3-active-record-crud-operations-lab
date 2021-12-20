class Movie < ActiveRecord::Base
    
    def create_with_title(given_title)
        flick = Movie.new(title: given_title)
        flick.save
    end
end