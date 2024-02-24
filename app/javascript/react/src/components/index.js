import React from "react";
import { createRoot } from "react-dom/client";
import {
    createBrowserRouter,
    RouterProvider,
    Route,
    Link,
} from "react-router-dom";

// document.addEventListener("turbo:load", () => {
//     const root = createRoot(
//         document.body.appendChild(document.createElement("div"))
//     );
//     root.render(<Hello />);
// });
createRoot(document.getElementById("home")).render(
    <RouterProvider router={router} />
);