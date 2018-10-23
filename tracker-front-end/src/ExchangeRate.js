import React from "react";
import withApollo from "./withApollo";

class ExchangeRate extends React.Component {
	render() {
		return this.props.data.rates.map(({ currency, rate }) => (
			<div key={currency}>
				<p>{`${currency}: ${rate}`}</p>
			</div>
		));
	}
}

export default withApollo(`
					{
						rates(currency: "USD") {
							currency
							rate
						}
					}
				`)(ExchangeRate);
