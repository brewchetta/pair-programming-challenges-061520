# In order for this to work, Agent needs to inherit from something...
class Agent < ActiveRecord::Base
  belongs_to :organization

  def fellow_agents
    Agent.all.select{ |agent| agent.organization_id == self.organization_id }
  end

  def self.names
    self.all.map(&:name)
  end

  def activate
    self.update(active_status: true)
  end

  def self.active_agents
    Agent.all.select(&:active_status)
  end

  def defect(org)
    self.update(organization: org)
  end

  def self.rogue_agents
    self.all.select { |agent| !agent.organization }
  end

end
