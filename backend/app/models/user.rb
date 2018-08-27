class User < ApplicationRecord
	has_many :children, class_name: "Baby", foreign_key: "mother_id"
	has_many :baby_users, foreign_key: 'caretaker_id'
	has_many :babies, through: :baby_users
	has_many :events, foreign_key: "caretaker_id"
end
