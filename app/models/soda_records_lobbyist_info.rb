class SodaRecordsLobbyistInfo < SodaRecordsMain

  def self.find(search)
    type = "fullname"
    search_string = create_search_string(search, type)
    @@client.get("vwqe-2riy", {"$where" => search_string}).first
  end

end
