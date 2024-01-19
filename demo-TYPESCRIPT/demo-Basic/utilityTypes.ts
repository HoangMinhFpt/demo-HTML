interface Car {
    brand: string
    model: string
    prize: number
}
let carPartial: Partial<Car> = {}
carPartial.brand = "Honda"
console.log("Partial utility: ", carPartial);

//demo Required
let myCar: Required<Car> = {
    brand: "Ford",
    model: "Raptor",
    prize: 50000
}
console.log("Required utility: ", myCar)

//demo record
let computerShop: Record<string, number> = {
    "Acer": 500,
    "MSI": 250
}
console.log("Record utility: ", computerShop);

//demo omit
let carOmit: Omit<Car, "model"> = {
    brand: "Dell",
    prize: 350
}
console.log("Omit utility: ", carOmit);

//demo pick
let carPick: Pick<Car, "model"> = {
    // brand:"Asus",
    model: "Tuf"
}
console.log("Pick utility: ", carPick);

//demo exclude
type CheckVariable = string | number | boolean | object
const valueCheck: Exclude<CheckVariable, string> = { name: "Minh", age: 24 }
console.log("Exclued utility: ", valueCheck, typeof valueCheck);


//demo parameter
type PointPrinter = (p: { x: number; y: number; }) => string;
const point: Parameters<PointPrinter>[0] = {
    x: 10,
    y: 20
};
console.log("Parameter utility: ", typeof point)

//demo readonly
const carReadOnly: Readonly<Car> = {
    brand: "Toyota",
    model: "Camry",
    prize: 5000
}
// carReadOnly.brand = "Honda"
console.log("Readonly utility: ", carReadOnly);

