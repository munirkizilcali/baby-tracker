class EventSerializer < ActiveModel::Serializer
  attributes :id, :amount_1, :amount_2, :unit_1, :unit_2, :notes, :event_type, :event_id, :event_time

  belongs_to :baby
  belongs_to :caretaker
  belongs_to :event
end

