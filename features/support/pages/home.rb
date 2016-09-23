class Home
  include PageObject

  def home
    browser.goto($base_url)
  end

  def search_key_word(key_word)
    browser.text_field(id: 'searchInput').set(key_word)
    browser.button(type: 'submit').click
  end

  def title
    browser.title
  end

  def did_you_mean
    browser.div(class: 'searchdidyoumean')
  end

end
