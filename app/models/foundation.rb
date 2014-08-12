class Foundation 
  include Mongoid::Document

  field :show, type: String
  field :name, type: String
  # field :brand, type: String
  # field :product, type: String
  # field :shade, type: String
  field :true_shade_id, type: String
  # field :coverage, type: String
  # field :finish, type: String
  # field :formulation, type: String
  # field :best_for, type: String
  # field :price_range, type: Float 
  # field :rating, type: Integer

  belongs_to :true_shade
  has_many :users
  # has_many :users, through: :reviews

#   def users
#     Users.find( user_ids )
#   end

#   def user_ids
#     self.true_shades.map(&:user_id)
#   end
# # This is to write back a list of users we've gotten true_shades from
#   def user_ids=(list)
#   end
  
end
