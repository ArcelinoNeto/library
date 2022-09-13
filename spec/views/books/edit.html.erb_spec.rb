require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      title: "MyString",
      description: "MyString",
      category: "MyString",
      author: "MyString",
      puclication_date: "MyString",
      publishing_company: "MyString"
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input[name=?]", "book[title]"

      assert_select "input[name=?]", "book[description]"

      assert_select "input[name=?]", "book[category]"

      assert_select "input[name=?]", "book[author]"

      assert_select "input[name=?]", "book[puclication_date]"

      assert_select "input[name=?]", "book[publishing_company]"
    end
  end
end
