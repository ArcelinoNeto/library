# frozen_string_literal: true

# This class inherits from ActiveRecord::Migration and has a change method that creates a table called
# books with the following columns: title, description, author, category, publication_date, and
# publishing_company
class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.string :author
      t.string :category
      t.string :publication_date
      t.string :publishing_company

      t.timestamps
    end
  end
end
