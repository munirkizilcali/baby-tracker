import React, { Component } from "react";
import FacebookLogin from "react-facebook-login";
import { GoogleLogin } from "react-google-login";

class App extends Component {
  constructor() {
    super();
    this.state = { isAuthenticated: false, user: null, token: "" };
  }

  logout = () => {
    this.setState({ isAuthenticated: false, token: "", user: null });
  };

  facebookResponse = e => {};

  googleResponse = e => {};
  onFailure = error => {
    alert(error);
  };
  render() {
    let content = !!this.state.isAuthenticated ? (
      <div>
        <p>Authenticated</p>
        <div>{this.state.user.email}</div>
        <div>
          <button onClick={this.logout} className="button">
            Log out
          </button>
        </div>
      </div>
    ) : (
      <div>
        <FacebookLogin
          appId="XXXXXXXXXX"
          autoLoad={false}
          fields="name,email,picture"
          callback={this.facebookResponse}
        />
        <GoogleLogin
          clientId="XXXXXXXXXX"
          buttonText="Login"
          onSuccess={this.googleResponse}
          onFailure={this.googleResponse}
        />
      </div>
    );

    return <div className="App">{content}</div>;
  }
}

export default App;
