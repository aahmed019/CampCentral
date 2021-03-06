import React from "react";
import { connect } from "react-redux";
import { closeModal, openModal } from "../../actions/modal_actions";
import { removeErrors, signup } from "../../actions/session_actions";
import SessionForm from "./session_form";

const mSTP = ({errors}) => ({
    errors: errors.session,
    information: {
        email: "",
        password: "",
        f_name: "",
        l_name: ""
    },
    formType: "Sign Up",
})

const mDTP = dispatch => ({
    authAction: user => dispatch(signup(user)),
    otherModal: (
        <a onClick ={() => dispatch(openModal('login'))}>Login</a>
    ),
    closeModal: () => dispatch(closeModal()),
    removeErrors: () => dispatch(removeErrors())
})

export default connect(mSTP, mDTP)(SessionForm)