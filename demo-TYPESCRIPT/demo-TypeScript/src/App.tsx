import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'

function App() {
  const [count, setCount] = useState(0);
  var num1: number = 1;
  var num2 = 5;
  let empName;
  empName="MinhNH";
  var booleanName: boolean = true ;
  

  return (
    <>
      <div>
        <a href="https://vitejs.dev" target="_blank">
          <img src={viteLogo} className="logo" alt="Vite logo" />
        </a>
        <a href="https://react.dev" target="_blank">
          <img src={reactLogo} className="logo react" alt="React logo" />
        </a>
      </div>
      <h1>Vite + React</h1>
      <div className="card">
        <button onClick={() => setCount((count) => count + 1)}>
          count is {count}
        </button>
        <p>
          {typeof num1}: {num1}
          <br></br>
          {typeof num2}: {num2}
          <hr />
          {typeof empName}: {empName}
          <hr />
          {typeof booleanName}: {booleanName.toString()}
          <br />

        </p>
      </div>
    </>
  )
}

export default App
