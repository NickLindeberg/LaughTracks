class Comedian < ActiveRecord::Base
  validates_presence_of :name, :age, :city

  has_many :specials

  def self.avg_age
    average(:age).to_i
  end

  def com_specs
    specials.count
  end

  def self.filter_cities
    distinct.pluck(:city)
    
  end

end
