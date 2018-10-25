import React from "react";
import withApollo from "./withApollo";

class ExchangeRate extends React.Component {
	render() {
		return <div>{JSON.stringify(this.props.data)}</div>;
	}
}

export default withApollo(`
							{
							  currentUser {
							    id
							    name
							    children {
							      id
							    }
							  }
							}
				`)()(ExchangeRate);
