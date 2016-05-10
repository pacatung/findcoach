class Coach < ActiveRecord::Base

  validates_format_of :contact_email, :with => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  validates_inclusion_of :status, :in => ["draft", "public", "delete"]

  belongs_to :user

  has_many :coach_cityships
  has_many :cities, :through => :coach_cityships

  has_many :coach_sportships
  has_many :sport, :through => :coach_sportships

  has_many :experiences
  accepts_nested_attributes_for :experiences, allow_destroy: true, :reject_if => :all_blank

  has_many :certificates
  accepts_nested_attributes_for :certificates, allow_destroy: true, :reject_if => :all_blank

end
