class SearchResult
  include PageObject

  def suggested_alternative
    browser.div(class: 'searchdidyoumean').link(id: 'mw-search-DYM-suggestion').when_present.click
  end

  def alternative_results
    browser.ul(class: 'mw-search-results').lis
  end

  def select_first_result
    alternative_results.first.link.click
  end
end
