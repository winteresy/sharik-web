import React, { Component } from "react";
import axios from "axios";

class PostsContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      posts: [],
    };
    this.getPosts = this.getPosts.bind(this);
  }

  componentDidMount() {
    this.getPosts();
  }

  getPosts() {
    axios
      .get("/api/v1/posts")
      .then(response => {
        const posts = response.data;
        this.setState({ posts });
      })
      .catch(error => {
        console.log(error);
      });
  }

  

  render() {
    return (
      <div>
        <div className="wrapItems">
          <ul className="listItems">
            {this.state.posts.map(post => (
                <li className="item" post={post} key={post.id}>
                  <label className="itemDisplay">{post.title}</label>
                  <label className="itemDisplay">{post.text}</label>
                </li>
           ))}
          </ul>
        </div>
      </div>
    );
  }
}

export default PostsContainer;