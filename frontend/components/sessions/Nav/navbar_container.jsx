import React from 'react'
import { connect } from 'react-redux'
import { Link } from "react-router-dom";
import { openModal } from '../../../actions/modal_actions';
import { login, logout } from '../../../actions/session_actions'

const NavBarContainer = (props) =>{
    return(
        <div className="navbar">
            
            <Link to ="/" className="logo">CampCentral</Link>

            {props.user ?
                <div className="dropdown">
                    <i className="far fa-user-circle profileIcon"></i>
                    <div className="dropdown-content">
                        <li onClick={props.logout}>Account</li>
                        <li onClick={props.logout}>Help</li>
                        <li onClick={props.logout}>About</li>
                        <li onClick={props.logout}>Logout</li>
                    </div>
                </div> 
                :
                <div>
                    <button className ="navButton" onClick={() => props.openModal('login')}>Login</button>
                    <button className ="navButton" onClick={() => props.openModal('signup')}>Sign Up</button>
                    <button className ="navButton demo" onClick={() => props.login({email: 'jack@fakeemail.com', password:'test123'})}>Demo</button>
                </div>
            }
        </div>
    )
}

const mSTP = (state) => ({
    user: state.entities.users[state.session.id]
})

const mDTP = dispatch => ({
    login: user => dispatch(login(user)),
    logout: () => dispatch(logout()),
    openModal: modalType => dispatch(openModal(modalType)),
})

export default connect(mSTP, mDTP)(NavBarContainer)