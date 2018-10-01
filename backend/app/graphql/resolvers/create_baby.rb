class Resolvers::CreateBaby < GraphQL::Function
    argument :name, !types.String
    argument :sex, !types.String
    argument :birthDay, !types.String
    argument :motherId, !types.Int

    type Types::BabyType

    def call(_obj, args, ctx)
    	Baby.create!(
			name: args[:name],
			sex: args[:sex],
			birth_day: args[:birthDay],
			mother_id: ctx[:current_user].id
    	)
    end
end