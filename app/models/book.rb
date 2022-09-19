class Book < ApplicationRecord
    validates_presence_of :title, on: :create
    validates_presence_of :category, on: :create
    validates_presence_of :author, on: :create
end
