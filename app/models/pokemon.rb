class Pokemon < ActiveRecord::Base
  has_and_belongs_to_many :egg_groups
  has_and_belongs_to_many :types
end
