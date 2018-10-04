class Special < ActiveRecord::Base
  validates_presence_of :name, :image_url, :run_time

  belongs_to :comedian

  def self.avg_run
    average(:run_time).to_i
  end

  def self.total_specials
    Special.count
  end

end
