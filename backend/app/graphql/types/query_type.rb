# module Types
#   class QueryType < Types::BaseObject
#     # Add root-level fields here.
#     # They will be entry points for queries on your schema.

#     # User Queries
#     field :all_users, [UserType], null: false,
#       description: "An example field added by the generator"
#     def all_users
#       User.all
#     end

#     field :current_user, UserType, null: false,
#       description: "An example field added by the generator"
#     def current_user
#       User.first
#     end

#     #Baby Queries
#     field :all_babies, [BabyType], null: false,
#       description: "All Babies"
#     def all_babies
#       Baby.all
#     end

#     field :baby, BabyType, null: false do 
#       description "Find a baby by ID"
#       argument :id, ID, required: true
#     end
#     def baby(id:)
#       Baby.find(id)
#     end

#     #Event Queries
#     field :all_events, [EventType], null: false,
#       description: "All Events"
#     def all_events
#       Event.all
#     end

#     field :event, EventType, null: false,
#       description: "Single Event"
#     def event
#       Event.first
#     end
#   end
# end

Types::QueryType = GraphQL::ObjectType.define do  
  name 'Query'

  field :allUsers, !types[Types::UserType] do  
    resolve -> (obj, args, ctx) { [ctx[:current_user]] }
  end

  # field :children, !types[Types::BabyType] do  
  #   resolve -> (obj, args, ctx) { [ctx[:current_user].children] }
  # end

  # field :babies, !types[Types::BabyType] do  
  #   resolve -> (obj, args, ctx) { [ctx[:current_user].babies] }
  # end

  # field :allEvents, !types[Types::EventType] do 
  # 	resolve -> (obj, args, ctx) { [ctx[:current_user].events]}
  # end
end