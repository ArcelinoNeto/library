# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'books/new', type: :view do
  before(:each) do
    assign(:book, Book.new(
                    title: 'MyString',
                    description: 'MyString',
                    category: 'MyString',
                    author: 'MyString',
                    publication_date: 'MyString',
                    publishing_company: 'MyString'
                  ))
  end

  it 'renders new book form' do
    render

    assert_select 'form[action=?][method=?]', books_path, 'post' do
      assert_select 'input[name=?]', 'book[title]'

      assert_select 'input[name=?]', 'book[description]'

      assert_select 'input[name=?]', 'book[category]'

      assert_select 'input[name=?]', 'book[author]'

      assert_select 'input[name=?]', 'book[publication_date]'

      assert_select 'input[name=?]', 'book[publishing_company]'
    end
  end
end
