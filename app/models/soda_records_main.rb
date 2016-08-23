class SodaRecordsMain
  extend QueryBuilder

  def self.find(search, type)
    search_string = create_search_string(search, type)
    @@client.get("nwsr-z4mh", {"$where" => search_string})
  end

  @@token = Rails.application.secrets.soc_token
  @@client = SODA::Client.new({:domain => "data.sfgov.org",
                             :app_token => @@token })

end
