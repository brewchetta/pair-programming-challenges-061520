puts "Building cottage data"

cottage_data = [
  {
    name: "Peaceful Lakeside Cottage",
    location: "Northern Lake Michigan",
    rating: 2.2,
    description: "Come enjoy this peaceful and definitely relaxing cottage with a beautiful view! Swimming strongly discouraged after the last accident. So is hiking in the woods. So is motorboating. So is going into the basement.",
    number_of_visitor_disappearances: 6,
    img_url: "https://www.realestateexpress.com/wp-content/uploads/2017/10/blog-image-haunted-houses-campbell-castle.jpg"
  },
  {
    name: "Placid Mountain Cabin",
    location: "Somewhere Deep in the Appalachian Mountains",
    rating: 1.4,
    description: "Quiet cabin far from civilization. The local rangers have assuranced us that the sounds in the woods are probably just bears and squirrels.",
    number_of_visitor_disappearances: 7,
    img_url: "https://glampinghub.com/blog/wp-content/uploads/2018/10/cabin-in-the-woods-1280x720.jpg"
  },
  {
    name: "Rustic Cabin in Southern Swamp Country",
    location: "Fifty Miles from New Orleans",
    rating: 0.8,
    description: "Rustic cabin in the heart of bayou country. Authentic living conditions! Bedding not included. Don't feed the alligators.",
    number_of_visitor_disappearances: 3,
    img_url: "https://i.pinimg.com/originals/ff/cf/d7/ffcfd78e17ae6602be89b505f9a64f0f.jpg"
  },
  {
    name: "Gorgeous Victorian Mansion",
    location: "Just Philadelphia",
    rating: 4.9,
    description: "Beautiful new world architecture with that old world charm. Mansion has several rooms, many of which we don't fully understand the purpose of. At night please avoid traveling between rooms as they've been known to shift unexpectedly.",
    number_of_visitor_disappearances: 23,
    img_url: "https://www.interesly.com/wp-content/uploads/2018/10/Abandoned-Victorian-Mansion-Chateau-Notenboom-or-Hof-van-Notenboom-Belgium.jpg"
  },
  {
    name: "Rural Midwestern Farmhouse",
    location: "Somewhere in the Midwest",
    rating: 2.9,
    description: "Isolated farmhouse with a location we've kept secret for too long. Go apple picking in nearby orchards, get lost in the farm maze, and whatever you do, don't go into attic. This advice is especially true if you hear weeping.",
    number_of_visitor_disappearances: 1,
    img_url: ""
  },
]

cottage_data.each do |c|
  puts "Listing #{c[:name]}"
  Cottage.create!(c)
end

puts "Seeds created"
