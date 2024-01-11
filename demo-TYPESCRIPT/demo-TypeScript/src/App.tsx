import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'

function App() {
  const [count, setCount] = useState(0);
  //khai báo biến
  var num1: number = 1;
  var num2 = 5;
  console.log("num1 & num2:", num1, num2);

  let empName: string = "Long An";

  var booleanName: boolean = true;

  //block scope
  {
    let empName;
    empName = "MinhNH";
    console.log("empName", empName);
  }

  {
    const car = { color: "red", brand: "Honda" }
    console.log("Car name1: ", car.brand + "-" + car.color)
    car.brand = "Toyota"
    console.log("Car name2: ", car.brand + "-" + car.color)
  }

  //hoisting 
  {
    a = "car";
    // b = "bike";
    // c = "moto";

    console.log("Hoisting var: ", a);
    // console.log("Hoisting let: ", b);
    // console.log("Hoisting const: ", c);

    var a;
    // let b;
    // const c;
  }

  // demo array
  {
    const nameArray: string[] = ["Minh", "Long An"];
    console.log("Array name1: ", nameArray);
    nameArray.push("TPHCM");
    console.log("Array name2: ", nameArray);

    const numberArray: number[] = [1, 2, 3];
    console.log("Array number1:", numberArray);
    numberArray.push(5)
    console.log("Array number2:", numberArray);
  }

  // demo tuples

  const myTuples: [string, number, boolean] = ["Minh", 24, true]


  // demo object

  const motorbike: { brand: string, model: string, prize: number } = { brand: "Honda", model: "WinnerX", prize: 400 }


  //demo enum

  enum age {
    Twenty = 20,
    TwentyOne = 21,
    TwentyTwo = 22,
    TwentyThree = 23,
  }

  // demo alias
  type ComputerName = string;
  type ComputerModel = string;
  type ComputerPrize = number;
  type Computer = {
    name: ComputerName,
    model: ComputerModel,
    prize: ComputerPrize,
  };

  const computerName: ComputerName = "Acer"
  const computerModel: ComputerModel = "Predator"
  const computerPrize: ComputerPrize = 3000
  const computer: Computer = {
    name: computerName,
    model: computerModel,
    prize: computerPrize
  };
  console.log("Computer: ", computer);

  // demo interface
  interface Computer1 {
    name: string
    model: string
  }

  interface PrizeComputer extends Computer1 {
    prize: number
  }

  const prizeComputer: PrizeComputer = {
    name: "Acer",
    model: "Predator",
    prize: 3000
  }
  console.log("Interface computer: ", prizeComputer);

  // demo Union

  function nameLaptop(name: string | number) {
    console.log(`My laptop is ${name}`);
  }
  nameLaptop("Acer")

  //demo funtions
  //return type
  function getDate(): string {
    return new Date().toLocaleString()
  }
  //Parameter 
  function multiplication(a: number, b: number, c?: number) {
    return a * b * (c || 0)
  }
  //Named parameter
  function add({ num1, num2 }: { num1: number, num2: number }) {
    return num1 + num2
  }
  //Rest parameter(0: add, 1: multi, )
  function multi(a: number, b: number, ...rest: number[]) {
    return a * b * rest.reduce((p, c) => p * c, 1)
  }
  //Type alias
  type Sub = (value: number) => number;
  const subFunction: Sub = (value) => value - 5

  //demo casting
  //with <>
  let x: unknown = "hello";
  console.log((x as string).length);

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
          <hr />
          My tuples: {myTuples}
          <br />
          Object motor: {motorbike.brand} {motorbike.model} {motorbike.prize}
          <br />
          Enum: {age.Twenty}
          <hr />
          Date function: {getDate()}
          <br />
          Parameter function: {multiplication(2, 4, 5)}
          <br />
          Named parameter function: {add({ num1: 3, num2: 5 })}
          <br />
          Rest parameter function: {multi(2, 4, 6, 8)}
          <br />
          Type alias function: {subFunction(10)}
          <hr />
        </p>
      </div>
    </>
  )
}

export default App
