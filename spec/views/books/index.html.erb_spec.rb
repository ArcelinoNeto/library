require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        title: "Title",
        description: "Description",
        category: "Category",
        author: "Author",
        puclication_date: "Puclication Date",
        publishing_company: "Publishing Company"
      ),
      Book.create!(
        title: "Title",
        description: "Description",
        category: "Category",
        author: "Author",
        puclication_date: "Puclication Date",
        publishing_company: "Publishing Company"
      )
    ])
  end

  it "renders a list of books" do
    # render
    # assert_select "tr>td", text: "Title".to_s, count: 2
    # assert_select "tr>td", text: "Description".to_s, count: 2
    # assert_select "tr>td", text: "Category".to_s, count: 2
    # assert_select "tr>td", text: "Author".to_s, count: 2
    # assert_select "tr>td", text: "Puclication Date".to_s, count: 2
    # assert_select "tr>td", text: "Publishing Company".to_s, count: 2
  end
end
