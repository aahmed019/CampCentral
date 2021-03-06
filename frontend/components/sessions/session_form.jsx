import React from 'react'

export default class SessionForm extends React.Component{
    constructor(props){
        super(props)
        this.newState = Object.assign({}, this.props.information)
        this.state = this.props.information
        this.handleSubmit = this.handleSubmit.bind(this)
    }

    handleSubmit(e){
        e.preventDefault()
        const user = Object.assign({}, this.state);
        this.props.authAction(user).then(this.props.closeModal)
        this.setState(this.newState)
    }

    demoLogin(demoUser){
        return e => {
            e.preventDefault()
            this.props.authAction(demoUser).then(this.props.closeModal)
        }
    }

    componentWillUnmount(){
        this.props.removeErrors()
    }

    renderErrors(){
        return(
            <ul>
                {this.props.errors.map((error, i) => (
                    <li key = {i}>
                        {error}
                    </li>
                ))}
            </ul>
        )
    }

    handleInput(field){
        return e => this.setState({[field]: e.target.value})
    }

    render(){
        const demoUser = {
            email: "jack@fakeemail.com",
            password: "test123"
        }
        return(
            <form onSubmit={this.handleSubmit} className="form">
                <h1>Welcome back!</h1>
                <h3>Let's get you adventuring.</h3>
                {this.renderErrors()}
                <div>

                <input type="text" className="sessionInput"
                value={this.state.email}
                placeholder="Email address"
                onChange = {this.handleInput('email')}
                />

                {this.props.formType === "Sign Up" ?
                    <>
                        <br /> <br />
                        <input type="text" className="sessionInput"
                        value ={this.state.f_name}
                        placeholder="First Name"
                        onChange = {this.handleInput('f_name')}
                        />

                        <br /><br />

                        <input type="text" className="sessionInput"
                        value ={this.state.l_name}
                        placeholder="Last Name"
                        onChange = {this.handleInput('l_name')}
                />
                    </>: ""
                }

                <br />
                <br />
                
                <input type="password" className="sessionInput"
                value ={this.state.password}
                placeholder="Password"
                onChange = {this.handleInput('password')}
                />

                <br />
                <br />

                <button className="formButton">{this.props.formType}</button>
                <br />
                <br />
                {/* {this.props.formType === "Login" ? <button className="formButton" onClick={this.demoLogin(demoUser)}>DEMO</button> : ""} */}
                <br />
                <br />
                <p>{this.props.formType === "Sign Up" ? "Already have an account?" : "Don't have an account?" } {this.props.otherModal} </p> 
                </div>
            </form>
        )
    }
}