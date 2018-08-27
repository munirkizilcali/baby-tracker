class Event < ApplicationRecord
  belongs_to :baby
  belongs_to :caretaker
  belongs_to :event, required: false
end
