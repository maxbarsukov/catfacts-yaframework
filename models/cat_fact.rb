class CatFact
  include Mongoid::Document

  field :fact, type: String
end
