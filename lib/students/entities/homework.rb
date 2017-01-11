class Homework < Hanami::Entity
  attributes do
    attribute :id,          Types::Int
    attribute :title,       Types::String
    attribute :description, Types::String
    attribute :url,         Types::String
  end
end
