module Types
  class EventType < Types::BaseObject
    field :id, ID, null: false
    field :event_type, String, null: true
    field :event_time, String, null: true
    field :baby, Types::BabyType, null: true
    field :caretaker, Types::UserType, null: true
    field :amount_1, Integer, null: true
    field :amount_2, Integer, null: true
    field :unit_1, String, null: true
    field :unit_2, String, null: true
    field :notes, String, null: true
    field :event, Types::EventType, null: true
  end
end
