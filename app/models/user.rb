class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 4, maximum: 10}
  has_secure_password
  has_many :messages
end
