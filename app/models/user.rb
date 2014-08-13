class User 
  include Mongoid::Document
  include ActiveModel::SecurePassword

  field :show, type: String
  field :name, type: String
  field :email, type: String
  field :password_digest, type: String
  field :brand, type: String
  field :product, type: String
  field :shade, type: String
  field :true_shade_id, type: String



  has_secure_password
  
  belongs_to :true_shade
  belongs_to :foundation
  # has_many :foundations, through: :reviews
end
 