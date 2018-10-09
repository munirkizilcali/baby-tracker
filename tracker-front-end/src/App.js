import React, { Component } from 'react';
import { createApolloFetch } from 'apollo-fetch';


class App extends Component {
  constructor(props) {
    super(props)
    this.state = {
      show: false,
      userInfo: null 
    }
  }

  componentDidMount() {

    const uri = 'http://localhost:3000/graphql';
    const authorization = "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1MzkxMjkzMDYsInN1YiI6MX0.wDDpTMSYXf2ssazKtOwOEPRPVat1SfMNk15jD0ZmXok"
    const query = ` 
                  {
                    currentUser {
                      id
                      name
                      children {
                        id
                      }
                    }
                  }
                  `

    const apolloFetch = createApolloFetch({ uri });

    apolloFetch.use(({ request, options }, next) => {
      if (!options.headers) {
        options.headers = {};  // Create the headers object if needed.
      }
      options.headers['authorization'] = authorization;

      next();
    });
    console.log(query)
    apolloFetch({query}).then(resp=>this.setState({userInfo: resp.data}))


  }

  toggleShow = () => {
    this.setState({show: !this.state.show})
  }
  render() {
    return (
      <div className="App">
          <p>
            Edit <code>src/App.js</code> and save to reload.
          </p>
          <a
            className="App-link"
            href="https://reactjs.org"
            target="_blank"
            rel="noopener noreferrer"
          >
           tabi Learn React
          </a>
      {this.state.userInfo ? JSON.stringify(this.state.userInfo) : ''}
      </div>

    );
  }
}

export default App;
