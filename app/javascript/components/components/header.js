import React, { Component } from "react";
import {NavLink} from 'react-router-dom'

class Header extends Component {
    render() {
        const{
            logged_in,
            sign_in_route,
            sign_out_route
        }=this.props
        return(
            <>
            <h1>Apartment App</h1>
            { logged_in && <a href={ sign_out_route }>Sign Out</a> }
        { !logged_in && <a href={ sign_in_route }>Sign In</a> }
        <br/>
        <NavLink to="/"> Home</NavLink>
        <br/>
        <NavLink to="/apartmentindex">Apartmentlisting</NavLink>
      </>
            
        )
    }
}

export default Header

