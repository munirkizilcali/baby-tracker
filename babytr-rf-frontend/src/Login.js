import React from "react";

class Login extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			isLoggedIn: false,
			email: "",
			password: "",
			jwt: "",
			error: ""
		};
		this.handleInput = this.handleInput.bind(this);
		this.handleSubmit = this.handleSubmit.bind(this);
	}
	handleInput(e) {
		this.setState({ [e.target.name]: e.target.value });
	}
	handleSubmit(e) {
		e.preventDefault();
		fetch("http://localhost:3000/user_token", {
			method: "POST",
			headers: { "content-type": "application/json" },
			body: JSON.stringify({
				auth: { email: this.state.email, password: this.state.password }
			})
		})
			.then(resp => resp.json())
			.then(json => {
				if (json.jwt) {
					this.setState({ jwt: json.jwt, isLoggedIn: true });
				} else {
					this.setState({ error: "Login Error" });
				}
			})
			.catch(err => console.log(err));
	}
	render() {
		if (!this.state.isLoggedIn) {
			return (
				<div>
					{this.state.error}
					<form onSubmit={this.handleSubmit}>
						<label>
							Email:{" "}
							<input
								type="text"
								name="email"
								onChange={this.handleInput}
							/>
						</label>
						<label>
							Password:{" "}
							<input
								type="password"
								name="password"
								onChange={this.handleInput}
							/>
						</label>
						<input type="submit" />
					</form>
				</div>
			);
		} else {
			return (
				<div>
					"Logged in!"
					<br />
					JWT: {this.state.jwt.slice(0, 15)}
					{"..."}
				</div>
			);
		}
	}
}

export default Login;
