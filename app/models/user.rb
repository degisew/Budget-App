class User < ApplicationRecord
  # Include default users modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :transacts, foreign_key: :author_id, dependent: :destroy
  has_many :categories, foreign_key: :author_id, dependent: :destroy
  validates :name, presence: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  # has_one_attached :photo

  def all_categories
    categories.all
  end
end
