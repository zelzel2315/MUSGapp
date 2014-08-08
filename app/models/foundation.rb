class Foundation 
  include Mongoid::Document
  field :show, type: String
  field :brand, type: String
  field :product, type: String
  field :shade, type: String
  # field :coverage, type: String
  # field :finish, type: String
  # field :formulation, type: String
  # field :best_for, type: String
  # field :price_range, type: Float
  # field :rating, type: Integer

  has_one :true_shade
  # has_many :users, through: :reviews
end
