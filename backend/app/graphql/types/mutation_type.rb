module Types
  class MutationType < Types::BaseObject

    field :test_field, String, null: false do
      description "An example field added by the generator"
      argument :id, ID, required: true
    end
    def test_field(id:)
      "Hello World"
    end
  end
end
