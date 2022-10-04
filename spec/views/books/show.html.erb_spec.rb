require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      title: "Title",
      description: "Description",
      category: "Category",
      author: "Author",
      publication_date: "Puclication Date",
      publishing_company: "Publishing Company"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Puclication Date/)
    expect(rendered).to match(/Publishing Company/)
  end
end
