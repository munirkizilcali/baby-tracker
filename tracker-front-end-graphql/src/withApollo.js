import React from "react";
import { Query } from "react-apollo";
import gql from "graphql-tag";

const withApollo = gqlQuery => variables => View => {
	return class WithApollo extends React.Component {
		render() {
			return (
				<Query
					query={gql`
						${gqlQuery}
					`}
					variables={{ variables }}
				>
					{({ loading, error, data }) => {
						if (loading) return <p> Loading... </p>;
						if (error) return <p> Error on data fetch! </p>;

						return <View data={data} />;
					}}
				</Query>
			);
		}
	};
};

export default withApollo;
