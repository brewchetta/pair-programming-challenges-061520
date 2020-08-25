# In order for this to work, Organization needs to inherit from something...
class Organization < ActiveRecord::Base
  has_many :agents

  def active_agents
    self.agents.select(&:active_status)
  end

  def erase
    self.agents.each(&:destroy)
    self.destroy
  end

  def older_organizations
    Organization.all.select { |org| org.year_formed < self.year_formed }
  end

end
