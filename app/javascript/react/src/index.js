import React from "react";
import { createRoot } from "react-dom/client";
import ThemeProvider from "../src/components/Blog";
import * as ReactDOM from "react-dom";

// import ReactDOM from 'react-dom';
import App from './App';
// document.addEventListener('DOMContentLoaded', () => {
//     ReactDOM.render(<ThemeProvider/>, document.getElementById('home'))
// })
const container = document.getElementById('home');
const root = createRoot(container); // createRoot(container!) if you use TypeScript
root.render(
    <App />
);