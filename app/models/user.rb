class User < ApplicationRecord
  validates :email, uniqueness: true
  validates_format_of :email, with: /@/
  validates :password_digest, presence: true

  #Relation
  has_many :products, dependent: :destroy 

  # bycript
  has_secure_password
end
