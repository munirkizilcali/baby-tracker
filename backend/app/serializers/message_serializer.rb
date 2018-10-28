class MessageSerializer < ActiveModel::Serializer
  attributes :id, :message
  has_one :user

	class UserSerializer < ActiveModel::Serializer
		attributes :id, :name
	end
end
