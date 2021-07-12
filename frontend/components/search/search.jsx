import React from "react";

const Search = (props) => {

    return(
        <div className="search-container">
            <div className='search'>  
                <form className='search-form'>
                <div className='search-input'>
                    <input type="text" placeholder="Try Yosemite, Napa, Moab..."/>
                </div> 
                    <div className="search-dates">
                        <div>
                            <input type="date" name="" id="" />
                        </div>
                        <div>
                            <input type="date" name="" id="" />
                        </div>
                        
                    </div>
                    <div className="search-button">
                        <button type='submit' className='search-button'>
                            <i className="fas fa-search"></i>
                        </button>
                    </div>
                    </form>
                </div>
                <img src="https://picsum.photos/1200/475" className='search-img'/>
        </div>
    )
}

export default Search