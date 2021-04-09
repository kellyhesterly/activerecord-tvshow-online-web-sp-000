class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.all.each {|show| show.name if self.highest_rating}.first
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    Show.all.each {|show| show.name if self.lowest_rating}
  end
end
