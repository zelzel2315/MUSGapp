class TrueShade
  include Mongoid::Document
  field :show, type: String
  field :brand, type: String
  field :product, type: String
  field :shade, type: String

  belongs_to :user 
  belongs_to :foundation
end
