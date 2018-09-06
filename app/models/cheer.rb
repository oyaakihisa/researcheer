class Cheer < ActiveRecord::Base
  belongs_to :user
  belongs_to :researcher
end
