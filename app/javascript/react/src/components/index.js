import React from "react";
import { createRoot } from "react-dom/client";
import ThemeProvider from "./Blog";
import * as ReactDOM from "react-dom";
import App from './App';
// document.addEventListener("turbo:load", () => {
//     const root = createRoot(
//         document.body.appendChild(document.createElement("div"))
//     );
//     root.render(<Hello />);
// });
const root = ReactDOM.createRoot(document.getElementById('home'));
root.render(
    <React.StrictMode>
    <App />
    </React.StrictMode>
)
// document.addEventListener('DOMContentLoaded', () => {
//     ReactDOM.render(<ThemeProvider/>, document.getElementById('home'))
// })