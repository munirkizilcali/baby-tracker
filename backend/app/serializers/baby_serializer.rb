class BabySerializer < ActiveModel::Serializer
  attributes :id, :name, :sex, :birth_day
  attribute :child
  def child
  	object.mother_id == current_user.id
  end

  	belongs_to :mother
	has_many :caretakers
	has_many :events
	has_many :messages

	class MessageSerializer < ActiveModel::Serializer
		attributes :id, :message
		has_one :user

		class UserSerializer < ActiveModel::Serializer
			attributes :id, :name
		end
	end
end
