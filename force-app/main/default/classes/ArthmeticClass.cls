public class ArthmeticClass {

    public integer res { get; set; }

    public integer num2 { get; set; }

    public integer num1 { get; set; }

    public PageReference remainder() {
        res = math.mod(num1,num2);
        PageReference pr = new PageReference('https://www.amazon.com');
        return pr;
    }


    public PageReference multipication() {
        res = num1 * num2;
        return null;
    }


    public PageReference divide() {
        res = num1 / num2;
        return null;
    }


    public PageReference substraction() {
        res = num1 - num2;
        return null;
    }


    public PageReference addition() {
        res = num1 + num2;
        return null;
    }

}