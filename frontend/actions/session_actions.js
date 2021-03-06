import * as SessionUtil from '../util/session'

export const RECEIVE_CURRENT_USER = "RECEIVE_CURRENT_USER"
export const LOGOUT_CURRENT_USER = "LOGOUT_CURRENT_USER"
export const RECEIVE_ERRORS = "RECEIVE_ERRORS"

const receiveCurrentUser = (user) => ({
    type: RECEIVE_CURRENT_USER,
    user
})

const logoutCurrentUser = () => ({
    type: LOGOUT_CURRENT_USER,
})

const receiveErrors = (errors) => ({
    type: RECEIVE_ERRORS,
    errors
})

export const signup = userInfo => dispatch => {
    return SessionUtil.signup(userInfo)
        .then(
            user => dispatch(receiveCurrentUser(user)),
            errors => dispatch(receiveErrors(errors.responseJSON))
            )
}

export const login = userInfo => dispatch => SessionUtil.login(userInfo)
.then(
    user =>  dispatch(receiveCurrentUser(user)),
    errors => (dispatch(receiveErrors(errors.responseJSON)))
    )

export const logout = () => dispatch => SessionUtil.logout()
.then(() => dispatch(logoutCurrentUser()))

export const removeErrors = () => dispatch => dispatch(receiveErrors([]))