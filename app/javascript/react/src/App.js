import { Routes, Route, BrowserRouter } from "react-router-dom"
import ThemeProvider from "../src/components/Blog";
import Table from "./Table"
import About from "./About"

function App() {
    return (
        <div className="App">
            <BrowserRouter>
                <Routes>
                    <Route element={<ThemeProvider />} >
                        <Route path="/" element={<Home />} />
                        <Route path="about" element={<About />} />
                        <Route path="table" element={<Table />} />
                    </Route>
                </Routes>
            </BrowserRouter>
        </div>
    )
}

export default App