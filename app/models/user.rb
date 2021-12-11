class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :username, uniqueness: {case_sensitive: true}, length: { minimum: 3 }
  validates :password, length: { minimum: 5 }
end
