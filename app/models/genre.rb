class Genre < ActiveRecord::Base
  has_many :engine_genres
  has_many :engines, :through => :engine_genres

  validates_presence_of :name

end
