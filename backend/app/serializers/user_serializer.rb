class UserSerializer < ActiveModel::Serializer
	attributes :id, :name, :email
	has_many :babies

	class BabySerializer < ActiveModel::Serializer
	  	attributes :id, :name, :sex, :birth_day
		attribute :child
		def child
			object.mother_id == current_user.id
		end

		has_many :caretakers
		has_many :events
		has_many :messages

		class UserSerializer < ActiveModel::Serializer
  			attributes :id, :name, :email
		end

		class EventSerializer < ActiveModel::Serializer
			attributes :id, :amount_1, :amount_2, :unit_1, :unit_2, :notes, :event_type, :event_id, :event_time, :caretaker_id
		end

		class MessageSerializer < ActiveModel::Serializer
		attributes :id, :message
		has_one :user

			class UserSerializer < ActiveModel::Serializer
				attributes :id, :name
			end
		end
	end
end
