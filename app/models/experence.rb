class Experence < ActiveRecord::Base
  validates_presence_of :name
  belongs_to :coach
end
