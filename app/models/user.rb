class User
  include Mongoid::Document
  field :show, type: String
  field :name, type: String
  field :email, type: String
  field :skintone, type: String
  field :skintype, type: String
end
