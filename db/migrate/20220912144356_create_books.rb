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
