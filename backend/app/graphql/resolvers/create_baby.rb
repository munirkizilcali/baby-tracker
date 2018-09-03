class Resolvers::CreateBaby < GraphQL::Function
    argument :name, !types.String
    argument :sex, !types.String
    argument :birthDay, !types.String
    argument :motherId, !types.Int

    type Types::BabyType

    def call(_obj, args, _ctx)
    	Baby.create!(
			name: args[:name],
			sex: args[:sex],
			birth_day: args[:birthDay],
			mother_id: args[:motherId]
    	)
    end
end