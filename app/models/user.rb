class User < ApplicationRecord
  enum role: [:librarian, :restricted_user]

  validates_presence_of :name, on: :create
  validates_uniqueness_of :name
  validates_presence_of :role, on: :create

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
