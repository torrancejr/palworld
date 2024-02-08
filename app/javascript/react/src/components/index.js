import React from "react";
import { createRoot } from "react-dom/client";
import Home from "./Home";
import * as ReactDOM from "react-dom";

// document.addEventListener("turbo:load", () => {
//     const root = createRoot(
//         document.body.appendChild(document.createElement("div"))
//     );
//     root.render(<Hello />);
// });

document.addEventListener('DOMContentLoaded', () => {
    ReactDOM.render(<Home/>, document.getElementById('home'))
})