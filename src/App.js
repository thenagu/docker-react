import React from 'react';
import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Change this. If reloading doesn't happen inside doccer, then set below in .env file<br/>
          CHOKIDAR_USEPOLLING=true
        </a>
      </header>
    </div>
  );
}

export default App;
