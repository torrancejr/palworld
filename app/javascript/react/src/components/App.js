import * as React from 'react';
import Blog from './Blog';
import FirstPost from "../posts/FirstPost";
import SecondPost from "../posts/SecondPost";
import {createRoot} from "react-dom/client";
import {
    createBrowserRouter,
    RouterProvider,
    Route,
    Link,
} from "react-router-dom";

const router = createBrowserRouter([
    { path: '/', element: <Blog /> },
    { path: '/post', element:  <FirstPost />},
    { path: '/second_post', element: <SecondPost /> }
]);

createRoot(document.getElementById("home")).render(
    <RouterProvider router={router} />
);

export default App;