class Planet < ActiveRecord::Base
  has_many :monsters
  has_many :trainers
end
