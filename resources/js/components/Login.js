import React, { Component } from 'react';
import { FormGroup, FormControl} from 'react-bootstrap';
import { Label, Input } from 'reactstrap';
import ReactDOM from 'react-dom';
import axios from 'axios';
import './app.css';

export default class Login extends Component {
  constructor(props) {
    super(props)

    this.state = {
      isLoading: false,
      email: '',
      password: '',
    }
  }

  validateForm() {
    return this.state.email.length > 0 && this.state.password.length > 0
  }

  handleSubmit (event)  {
    event.preventDefault()

    this.setState({ isLoading: true })

    try {
    axios.post('http://127.0.0.1:8000/api/login', this.state).then((response) => {
    localStorage.setItem('token', response.data.data.token)
    console.log(localStorage.getItem("token"))
    window.open("http://127.0.0.1:8000/dashboard","_self")
    })
    
    } catch (e) {
      alert(e.message)
      console.log(e)
      this.setState({ isLoading: false })
    }
  }

  render() {
    return (
      <div className="Login">
        <div style={{ textAlign: 'center' }}>
          <h2>
            Laravel-React Crud Application
          </h2>
          <h6>
          (please sign-in)
          </h6>
        </div>
        <form onSubmit={this.handleSubmit.bind(this)} style={{ textAlign: 'left' }}>
          <FormGroup controlId="email" bsSize="large">
            <Label>Email</Label>
            <Input
              name="email"
              autoFocus
              type="email"
              value={this.state.email}
              onChange={(e) => {
                let email = this.state.email
                email = e.target.value
                this.setState({email})
            }}
            ></Input>
          </FormGroup>
          <FormGroup controlId="password" bsSize="large">
            <Label>Password</Label>
            <Input
              name="password"
              type="password"
              value={this.state.password}
              onChange={(e) => {
                let password = this.state.password
                password = e.target.value
                this.setState({password})
            }}
              type="password"
            ></Input>
          </FormGroup>
          <div className="col-12">
            <button 
            type="submit" 
            className="btn btn-primary btn-block" 
            style={{ textAlign: 'center' }}
            >Sign In</button>
          </div>
        </form>
      </div>
    )
  }
}

if (document.getElementById('login')) {
    ReactDOM.render(<Login />, document.getElementById('login'));
}
