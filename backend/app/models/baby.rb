class Baby < ApplicationRecord
	belongs_to :mother, class_name: "User"
	has_many :baby_users, dependent: :destroy
	has_many :caretakers, through: :baby_users
	has_many :events, dependent: :destroy
	has_many :messages, dependent: :destroy

	after_create :add_mother_to_caretakers

	private 

	def add_mother_to_caretakers
		self.caretakers << User.find(self.mother_id)
	end
end
