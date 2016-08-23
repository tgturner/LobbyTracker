class SodaRecordsLobbyistFirm < SodaRecordsMain

  def self.max_meetings(search, type)
    search_string = create_search_string(search, type)
    @@client.get("nwsr-z4mh", {"$where" => search_string,
                           "$group" => "official",
                    "$select" => "count(official) AS official_count, official",
                    "$order" => "official_count DESC" }).first
  end

end
