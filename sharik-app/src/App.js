import React, { Component } from "react";
import "./App.css";
import PostsContainer from "./components/PostsContainer";





class App extends Component {
  render() {
    return (
      <div className="mainContainer">
        <div className="topHeading">
          <h1>Посты</h1>
        </div>
        <PostsContainer />
      </div>
    );
  }
}

export default App;