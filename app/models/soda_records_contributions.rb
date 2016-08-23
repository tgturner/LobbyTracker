class SodaRecordsContributions < SodaRecordsMain

  def self.find(search, type)
    search_string = create_search_string(search, type)
    @@client.get("rcwj-akyd", {"$where" => search_string,
                              "$select" => "sum(amount) AS contributions" }).first
  end

  def self.max_contributer(search, type)
    search_string = create_search_string(search, type)
    opposite = { "official" => "lobbyist_firm", "lobbyist_firm" => "official" }
    @@client.get("rcwj-akyd", {"$where" => search_string,
                              "$select" => "sum(amount) AS contributions, #{opposite[type]}",
                              "$group" => "#{opposite[type]}",
                              "$order" => "contributions DESC" }).first
  end

end
