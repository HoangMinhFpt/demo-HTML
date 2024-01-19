class NamedValue<T> {
    private valueName: T | undefined;

    constructor(private name: string) { }

    public valueSet(value: T) {
        this.valueName = value;
    }

    public valueGet(): T | undefined {
        return this.valueName;
    }

    public stringName(): string {
        return `${this.name}: ${this.valueName}`;
    }
}

const valueNa = new NamedValue<string>('My name: ');
valueNa.valueSet("Minh");
console.log(valueNa.stringName()); 