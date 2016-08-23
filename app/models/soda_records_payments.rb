class SodaRecordsPayments < SodaRecordsMain

  def self.find(search, type)
    search_string = create_search_string(search, type)
    @@client.get("27fh-ib5n", {"$where" => search_string,
                              "$select" => "sum(amount) AS payments" }).first
  end

end
