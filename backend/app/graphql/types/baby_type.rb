module Types
  class BabyType < Types::BaseObject
  	field :id, ID, null: false
    field :name, String, null: true
    field :sex, String, null: true
    field :birth_day, String, null: true
    field :mother, Types::UserType, null: true
    field :caretakers, [Types::UserType], null: true
    field :events, [Types::EventType], null: true
  end
end
