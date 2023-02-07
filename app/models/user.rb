class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
end
