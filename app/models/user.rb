# frozen_string_literal: true

# This class represents a user of the library system
class User < ApplicationRecord
  enum role: %i[librarian restricted_user]
  paginates_per 20

  validates_presence_of :name, on: :create
  validates_uniqueness_of :name
  validates_presence_of :role, on: :create

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :timeoutable,
         :recoverable, :rememberable, :validatable
end
