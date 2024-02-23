import { createBrowserRouter, RouterProvider} from "react-router-dom";
import * as React from 'react';
import Blog from './Blog';

const router = createBrowserRouter([
    { path: '/', element: <Blog /> }
]);

function App() {
    return <RouterProvider router={router}/>;
}

export default App;