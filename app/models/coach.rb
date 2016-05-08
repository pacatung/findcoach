class Coach < ActiveRecord::Base
  belongs_to :user

  has_many :coach_cityships
  has_many :cities, :through => :coach_cityships

  has_many :coach_sportships
  has_many :sport, :through => :coach_sportships

end
