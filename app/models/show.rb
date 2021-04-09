class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.all.each do |show|
      show.highest_rating = true?
      show.name
    end
  end
end
