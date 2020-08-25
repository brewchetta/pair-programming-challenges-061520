# In order for this to work, Agent needs to inherit from something...
class Agent < ActiveRecord::Base
  belongs_to :organization
end
