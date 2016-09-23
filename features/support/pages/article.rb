class Article
  include PageObject

  def title
    browser.title.length
  end

  def content
    browser.div(id: 'toc').h2(text: 'Contents').exist?
  end
end