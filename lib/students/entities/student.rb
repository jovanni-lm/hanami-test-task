class Student < Hanami::Entity
  EMAIL_FORMAT = /\@/

  attributes do
    attribute :id,          Types::Int
    attribute :first_name,  Types::String
    attribute :last_name,   Types::String
    attribute :email,       Types::String.constrained(format: EMAIL_FORMAT)
  end
end
