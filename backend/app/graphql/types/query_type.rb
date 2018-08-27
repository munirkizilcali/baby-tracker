module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :all_users, [UserType], null: false,
      description: "An example field added by the generator"
    def all_users
      User.all
    end

    field :current_user, UserType, null: false,
      description: "An example field added by the generator"
    def current_user
      User.first
    end
  end
end
