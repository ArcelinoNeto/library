# frozen_string_literal: true

# A Book has a title, category, and author, and is paginated in groups of 20.
class Book < ApplicationRecord
  paginates_per 20

  validates_presence_of :title, on: :create
  validates_presence_of :category, on: :create
  validates_presence_of :author, on: :create
end
