class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, format: { with: /[^\s]+[a-zA-z\d]+@[a-z]+.[a-z]{3}/, message: "put a valid mail" }
end
