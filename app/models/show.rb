class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    self.all.each {|show| show.name if self.highest_rating}.first
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    self.where("rating = ?", self.lowest_rating).first
  end

end
