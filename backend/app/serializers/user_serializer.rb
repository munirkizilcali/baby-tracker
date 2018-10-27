class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email

  attribute :children do |object|
  	object.children.map do |baby|
  		baby.name
  	end
  end

  	has_many :children, record_type: :baby
	has_many :baby_users
	has_many :babies
	has_many :events,

end
