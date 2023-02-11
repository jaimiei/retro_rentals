class User < ApplicationRecord
  has_many :requests

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :first_name, presence: true
  # validates :last_name, presence: true

  validates :email, presence: true, uniqueness: true
  # validates :username, presence: true, uniqueness: true
end
