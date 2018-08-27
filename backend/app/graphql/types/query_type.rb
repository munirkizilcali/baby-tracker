module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # User Queries
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

    #Baby Queries
    field :all_babies, [BabyType], null: false,
      description: "All Babies"
    def all_babies
      Baby.all
    end

    field :baby, UserType, null: false,
      description: "Single Baby"
    def baby
      Baby.first
    end

    #Event Queries
    field :all_events, [EventType], null: false,
      description: "All Events"
    def all_events
      Event.all
    end

    field :event, EventType, null: false,
      description: "Single Event"
    def event
      Event.first
    end
  end
end
