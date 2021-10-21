import {useState, useEffect} from 'react';
import './App.css';

function App() {

  const[count, setCount] = useState([])

  // const fetch = () => {
  //   fetch('https://damp-brook-81947.herokuapp.com/count')
  //   .then(response => response.json())
  // .then(data => console.log(data));
  // }
  useEffect(() => {
    fetch("api/counts")
      .then((r) => r.json())
      .then(setCount);
  }, []);

  // console.log(count.view)
  
  return (

    <div className="App">
      <div className="bottom-border">
        <div className="circlecontainer">
        </div>
      </div>
      <p>This page was viewed </p>
     <h1>{count.view}</h1>
     <p>times!</p>
    </div>
  );
}

export default App;
