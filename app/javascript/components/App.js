import React from "react"
import Header from './components/header'
import ApartmentShow from './pages/ApartmentShow'
import ApartmentIndex from './pages/ApartmentIndex'
import Home from './pages/Home'
import NotFound from './pages/NotFound'

import{
  BrowserRouter as Router,
  Route,
  Switch
} from 'react-router-dom'


class App extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      apartments:[]
    }
  }

componentDidMount(){
  this.readApartments()
}

readApartments = () => {
  fetch("/apartments")
  .then(response => response.json())
  .then(payload => this.setState({apartments: payload}))
  .catch(errors => console.log("Read errors:", errors))
}

  render () {
  const {
    logged_in,
    current_user,
    new_user_route,
    sign_in_route,
    sign_out_route
  } = this.props
  console.log(this.state.apartments)
    return (
      <Router>
      <Header
        sign_in_route={ sign_in_route}
        sign_out_route={ sign_out_route }
        logged_in={ logged_in }

        
      />
      <Switch>
        <Route exact path="/" component= {Home} />
        <Route path= "/apartmentindex" render={(props) => <ApartmentIndex apartments={this.state.apartments}/> } 
        />
        <Route path= "/aprtmentshow" component= {ApartmentShow} />
        <Route exact path="/" component={NotFound} />
      </Switch>
    </Router>
    );
  }
}

export default App
