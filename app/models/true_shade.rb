class TrueShade
  include Mongoid::Document
  field :name, type: String
  field :description, type: String


  has_many :users 
  has_many :foundations
end

# for choiceinator, decison is true shade and criteria is foundation  