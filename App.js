
import './App.css';


import Header from "./header"

import Footer from "./footer"

function App() {
    return (
        <div>
            <Header />
            <h2>Degree</h2>
            <input type="Dropdown" />
            <p>What degree are you in?</p>
             <h2>Campus</h2>
            <input type="Dropdown" />
            <p>What campus are you in?</p>

            <button >Back</button>
            <button >Next</button>

            
           
            <Footer />
        </div>
    )
}

export default App;
