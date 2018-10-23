import React from "react";
import ReactDOM from "react-dom";
// import './index.css';
import App from "./App";
import * as serviceWorker from "./serviceWorker";
import "bootstrap/dist/css/bootstrap.css";
import ApolloClient from "apollo-boost";
import { ApolloProvider } from "react-apollo";

// const client = new ApolloClient({
// 	uri: "https://w5xlvm3vzz.lp.gql.zone/graphql",
// 	headers: {"Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NDAzNDQ0MTcsInN1YiI6MX0.dHZcGN13r9H8flDj_f3erjMeq7AEd4BccJFq2i7xf8w"}
// });

const client = new ApolloClient({
	uri: "http://localhost:3000/graphql",
	headers: {
		Authorization:
			"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NDAzNDQ0MTcsInN1YiI6MX0.dHZcGN13r9H8flDj_f3erjMeq7AEd4BccJFq2i7xf8w"
	}
});

ReactDOM.render(
	<ApolloProvider client={client}>
		<App />
	</ApolloProvider>,
	document.getElementById("root")
);

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: http://bit.ly/CRA-PWA
serviceWorker.unregister();
