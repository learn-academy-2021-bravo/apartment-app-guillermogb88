import React, { Component } from 'react'

export default class Index extends Component {
    render() {
        const{apartments} = this.props
        return (
            <>
            <h1>Index page</h1>
                
                {apartments && apartments.map(apartment => {
                    return <div key={apartment.id}>
                        <p>{apartment.street}</p>
                        <p>{apartment.city}</p>
                        <p>{apartment.state}</p>
                        <p>{apartment.manager}</p>
                        <p>{apartment.email}</p>
                        <p>{apartment.price}</p>
                        <p>{apartment.bedrooms}</p>
                        <p>{apartment.bathrooms}</p>
                        <p>{apartment.pets}</p>
                    </div>
                })}
            </>
        )
    }
}

