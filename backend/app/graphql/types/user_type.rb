# module Types
#   class UserType < Types::BaseObject
#   	field :id, ID, null: false
#     field :name, String, null: true
#     field :email, String, null: true
#     field :children, [Types::BabyType], null: true
#     field :babies, [Types::BabyType], null: true
#   end
# end

Types::UserType = GraphQL::ObjectType.define do 
	name 'User'

	field :id, !types.ID
    field :name, !types.String
    field :email, !types.String
    field :children, types[Types::BabyType]
    field :babies, types[Types::BabyType]
end
