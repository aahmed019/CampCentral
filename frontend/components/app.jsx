import React from "react";
import { Route, Switch } from "react-router";
import { AuthRoute, ProtectedRoute } from "../util/route.util";
import Splash from "./splash";
import NavBarContainer from "./Nav/navbar_container";
import Modal from './modal/modal'
import LocationsIndexContainer from "./locations/locations_index_container";
import LocationShowContainer from "./locations/location_show_container";
import ProfileContainer from "./profile/profile_container";
 

const App = () => (
    <div className="webpage">
        <Modal/>
        <Route path ="/" component={NavBarContainer}/>
        <h1 style={{paddingTop:'120px'}}></h1>
        <ProtectedRoute path='/profile' component={ProfileContainer}/>
        <Route exact path= "/" component={Splash}/>
        <Route exact path="/locations" component={LocationsIndexContainer} />
        {/* <Route exact path="/locations" component={LocationsContainer} /> */}
        <Route exact path="/locations/:locationId" component={LocationShowContainer} />

    </div>
);

export default App;