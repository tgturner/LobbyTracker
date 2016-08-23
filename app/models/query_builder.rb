module QueryBuilder

  def create_search_string(search, type)
    search_terms = search.split(" ")
    string = "lower(#{type}) like"
    search_terms.each_with_index do |term, index|
      if index == 0
        string += " '%#{term.downcase}%'"
      else
        string += " AND lower(#{type}) like '%#{term.downcase}%'"
      end
    end
    string
  end

end
