class Review
  include Mongoid::Document
  field :show, type: String
  field :user_name, type: String
  field :foundation_brand, type: String
  field :foundation_product, type: String
  field :shade, type: String
  field :shade_match, type: Integer
  field :effectiveness_and_performance, type: Integer
  field :quality_and_value, type: Integer
  field :texture_consistency, type: Integer
  field :ease_of_use_and_application, type: Integer
  field :overall_rating, type: Integer
  field :comments, type: String
end
