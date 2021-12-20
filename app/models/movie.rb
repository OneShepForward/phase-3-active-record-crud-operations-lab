class Movie < ActiveRecord::Base
    
    def self.create_with_title(given_title)
        flick = Movie.create(title: given_title)
    end

    def self.first_movie
        Movie.first
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(n)
        Movie.find(n)
    end

    def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes);
    end

    def self.find_movies_after_2002
        Movie.where(release_date > 2002)
    end

end