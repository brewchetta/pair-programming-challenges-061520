class APIService

  @@uri = URI("https://thereportoftheweek-api.herokuapp.com/reports")
  # use this URI for your fetches

  def fetch_reports
    # fetch all the reports using this method and then create a Report for each of them
    response = Net::HTTP.get_response(@@uri)
    data = JSON.parse(response.body)
    data.each do |report|
      Report.new(product: report["product"], manufacturer: report["manufacturer"], category: report["category"], date_released: report["dateReleased"], rating: report["rating"])
    end
  end

end
