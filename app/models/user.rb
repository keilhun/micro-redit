class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :firstname, presence: true, length: { maximum: 50 }
  validates :lastname, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
  validates :username, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }

end
