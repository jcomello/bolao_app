class Country
  include Mongoid::Timestamps
  include Mongoid::Document

  field :number,     type: String
  field :long_code,  type: String
  field :short_code, type: String
  field :number,     type: String

  belongs_to :users
end
