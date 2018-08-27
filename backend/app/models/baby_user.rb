class BabyUser < ApplicationRecord
  belongs_to :baby
  belongs_to :caretaker, class_name: "User"
end
