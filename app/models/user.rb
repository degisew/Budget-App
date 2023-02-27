class User < ApplicationRecord
  # Include default users modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :groups, foreign_key: :author_id
  has_many :categories, foreign_key: :author_id
  validates :name, presence: true
  validates :password, presence: true, length: { in: 6..20 }
  validates :email, presence: true, uniqueness: true
end
