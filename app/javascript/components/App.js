import React from "react"
import Header from './components/header'
class App extends React.Component {
  render () {
  const {
    logged_in,
    current_user,
    new_user_route,
    sign_in_route,
    sign_out_route
  } = this.props
    return (
      <>
      <Header
        sign_in_route={ sign_in_route}
        sign_out_route={ sign_out_route }
        logged_in={ logged_in }
      />
    </>
    );
  }
}

export default App
