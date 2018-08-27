module Types
  class UserType < Types::BaseObject
    field :name, String, null: true
    field :email, String, null: true
    field :children, [Types::BabyType], null: true
    field :babies, [Types::BabyType], null: true
  end
end
