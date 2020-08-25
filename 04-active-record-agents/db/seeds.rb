# You can build your seeds here to test the data
# The next two lines remove all agents and organizations before reseeding the database
Agent.destroy_all
Organization.destroy_all

o1 = Organization.create(name: "Culper Ring", year_formed: 1776)
o2 = Organization.create(name: "MI6", year_formed: 1915)
o3 = Organization.create(name: "Redacted", year_formed: 2020)

10.times do |i|
  agent_hash = {
    name: "Agent #{i}",
    year_trained: rand(1970..2020),
    active_status: rand(1..2) > 1,
    specialty: ["demoltion", "survival", "extraction", "wetwork", "finances"].sample,
    organization_id: Organization.all.sample
  }
  Agent.create!(agent_hash)
end
