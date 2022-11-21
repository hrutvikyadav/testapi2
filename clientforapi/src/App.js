import logo from './logo.svg';
import React, { useEffect, useState } from 'react';
import CyclerList from './components/CyclerList';
import axios from 'axios'

const API_URL = "http://127.0.0.1:3000/api/v1/cyclers"

function getData() {
  return axios.get(API_URL).then((response) => response.data)
}


class App extends React.Component {
  constructor(props){
    super(props)

    this.state = {
      cyclers: [],
    }
  }

  componentDidMount() {
    getData().then(data => {
      this.setState({
        cyclers: data,
      })
    })
  }

  render(){
    return (
      <div className='App'>
        <CyclerList list={this.state.cyclers}></CyclerList>
      </div>
    )
  }
}
export default App;
