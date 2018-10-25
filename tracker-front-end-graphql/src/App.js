import React, { Component } from "react";
import ExchangeRate from "./ExchangeRate.js";

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      show: false,
      userInfo: null
    };
  }

  // componentDidMount() {
  //   const uri = "http://localhost:3000/graphql";
  //   const authorization =
  //     "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1MzkxMjkzMDYsInN1YiI6MX0.wDDpTMSYXf2ssazKtOwOEPRPVat1SfMNk15jD0ZmXok";
  //   const query = `
  //                 {
  //                   currentUser {
  //                     id
  //                     name
  //                     children {
  //                       id
  //                     }
  //                   }
  //                 }
  //                 `;
  // }

  toggleShow = () => {
    this.setState({ show: !this.state.show });
  };
  render() {
    return <ExchangeRate />;
  }
}

export default App;
