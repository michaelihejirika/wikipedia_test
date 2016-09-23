Given /^I am on the wikipedia home page$/ do
  visit(Home).home
  expect(on_page(Home).title).to eq 'Wikipedia'
end

When /^I search for the word "(.*)"$/ do |key_word|
  on_page(Home).search_key_word(key_word)
  expect(on_page(Home).did_you_mean.text.include?('Did you mean: fury rabbit')).to be true
end

When /^select the suggested alternative$/ do
  on_page(SearchResult).suggested_alternative
end

Then /^I should see "(.*)" alternative search results$/ do |expected_result_count|
  alternative_results_count = on_page(SearchResult).alternative_results.count
  expect(alternative_results_count).to eq expected_result_count.to_i
end

Then /^the first search result has a title and table of contents$/ do
  on_page(SearchResult).select_first_result
  expect(on_page(Article).title).to be > 0
  expect(on_page(Article).content).to be true
end