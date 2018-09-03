class User < ApplicationRecord
	has_secure_password

	validates :name, presence: true
	validates :email, presence: true, uniqueness: true

	has_many :children, class_name: "Baby", foreign_key: "mother_id", dependent: :destroy 
	has_many :baby_users, foreign_key: 'caretaker_id', dependent: :destroy 
	has_many :babies, through: :baby_users
	has_many :events, foreign_key: "caretaker_id"
end
