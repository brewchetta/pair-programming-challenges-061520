# In order for this to work, Organization needs to inherit from something...
class Organization < ActiveRecord::Base
  has_many :agents
end
