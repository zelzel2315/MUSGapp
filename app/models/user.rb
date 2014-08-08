class User 
  include Mongoid::Document
  include ActiveModel::SecurePassword

  field :show, type: String
  field :name, type: String
  field :email, type: String
  field :password_digest, type: String
  # field :skintone, type: String
  field :brand, type: String
  field :product, type: String
  field :shade, type: String
  # field :skintype, type: String

  has_secure_password

  has_one :true_shade
  # has_many :foundations, through: :reviews
end
