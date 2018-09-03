# module Types
#   class EventType < Types::BaseObject
#     field :id, ID, null: false
#     field :event_type, String, null: true
#     field :event_time, String, null: true
#     field :baby, Types::BabyType, null: true
#     field :caretaker, Types::UserType, null: true
#     field :amount_1, Integer, null: true
#     field :amount_2, Integer, null: true
#     field :unit_1, String, null: true
#     field :unit_2, String, null: true
#     field :notes, String, null: true
#     field :event, Types::EventType, null: true
#   end
# end

Types::EventType = GraphQL::ObjectType.define do
    name 'Event'

    field :id, !types.ID
    field :event_type, !types.String
    field :event_time, !types.String
    field :baby, Types::BabyType
    field :caretaker, Types::UserType
    field :amount_1, types.Int
    field :amount_2, types.Int
    field :unit_1, types.String
    field :unit_2, types.String
    field :notes, types.String
    field :event, Types::EventType
end

