class Researcher < ActiveRecord::Base
  has_many :advertisements
  has_many :cheers
  has_many :comments
end
