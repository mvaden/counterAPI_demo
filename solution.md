# Trial Project

The purpose of this document is to explain the scope of this project, it's features and dependencies, and pending updates that are recommended for future development.

## Scope

The scope of this project is to create a basic client-side demonstration of managing or updating UI state at the triggering of an HTTP-based event by utilize the [Counter](https://countapi.xyz/) API. 

## Dependencies

My decision was to select a young but competitive frame with few dependencies that would enable implementing a certain feature with less written code - code that is classically vanilla (for the most part) - while meeting the same acceptance criteria. That framework is [Svelte](https://svelte.dev/), which compiles Svelte code at build time to produce JavaScript is smaller in size and faster in performance. 

The project also contains a Dockerfile for running the project in a container. You are also welcome to run the project on your local machine without Docker.

## Setup

If you wish to run the project without Docker, you will need make sure that you have Node.js v12 or later installed on your local machine. You will also need to have git installed. Finally, you will need a modern web browser such as Chrome or Firefox. Otherwise, make sure that you have Docker Docker Desktop installed and setup to begin running the container.

First, make sure you clone down the [repo](https://github.com/mvaden/fearless_demo) from Github and checkout the `main` branch. 

To start the project locally, run `npm run dev` and go to `http://localhost:3000/` in your browser.

To start this project in a local container, first run `docker build -t counter-app .` to build the image. Then run ` docker run -p 3000:3000 counter-app` and go to `http://localhost:3000/` in your browser.

## The App

In the browser, you'll be greeted with a simple user interface which contains a button labeled "Update Hits", and a seperate element where the number of hits will be printed to. The button contains a handler function `getHits()` which fetches and returns the number value asynchronously. Using a set of `#if` block statements (provided by Svelte) in the markup, the returned value is printed in an element once it is no longer undefined. When it is undefined while awaiting the returned value, a simple message will be printed until be printed for the user to signify that an HTTP event is taking place.

## Assumptions

Given the list of "must haves", "nice to haves" and the suggested time limit of two hours or less, I wasn't expecting for this project to be large in scope at all. At first, I contemplated using an Express backend to handle making HTTP requests until I realized that this API accepts requests from any origin. At that point, it became perfectly accepable to do this project exclusively on the front-end. 

## Future Updates

For the future, I think it would be interesting to add routing for several other components of namespaces that a user could get hits on while using a local storage solution for caching the values of those hits for whenever the user navigates between different namespaces. 

