class SodaRecordsOfficial < SodaRecordsMain

  def self.max_meetings(search, type)
    search_string = create_search_string(search, type)
    @@client.get("nwsr-z4mh", {"$where" => search_string,
                           "$group" => "lobbyist_firm",
                    "$select" => "count(lobbyist_firm)
                    AS firm_count, lobbyist_firm",
                    "$order" => "firm_count DESC" }).first
  end

end
