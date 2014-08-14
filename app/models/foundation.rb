class Foundation 
  include Mongoid::Document

  field :show, type: String
  field :name, type: String
  field :brand, type: String
  field :product, type: String
  field :shade, type: String


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
