//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let assumedString: String! = "An string";
print(assumedString);

//浮点数可以求余
let abc = 8.5;
let def = abc % 2;
print(def);

//右边赋值的数据为多个数据的元祖，它的元素可以是一次性赋给的多个常量或变量
let (x,y) = (1,5);
print((y));

//if条件里不能写＝，因为if x ＝ y 这样写是无效的
var a = 2;
var b = 3;
if (a == b){
    print("true");
}else{
    print("failes");
}

//字符串可以相加
let dog: String = "dog";
let cow: String = "cow";
let dogAndCow = dog + cow;

//取余运算，Swift的余数运算也能运用于浮点数
let aaa = 9 % 2;
let bbb = (-9) % 2;
let ccc = 9 % (-2);
let ddd = 8 % 1.5;

//自增自减运算符
var eee = 0;
print(eee);
let fff = ++eee;
print(eee);
let ggg = eee++;
print(eee);

//一元减运算符
let three = 3;
let minusThree = -three;
let plusThree = +three;

//比较运算符
1 === 1;
let name = "word";
if name == "word"{
    print("hello,word");
}else{
    print("I'm soory \(name),but I don't recognize you");
}

//封闭范围运算符
for index in 1...5{
    print("\(index)");
}

//半封闭运算符
let names = ["Anna","Alex","Brian","Jack"];
let count = names.count;
for name in names{
    print("\(name)");
}

//逻辑运算符
let enteredDoorCode = true;
let passedRetinaScan = false;
let hasDoorKey = false;
let knowsOverridePassword = true;
if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword{
    print("Welcome");
}else{
    print("Access denied");
}

//字符串常量
let wiseWords = "\"I\'m a girl\" - echo";

//单字节Unicode字符
let dollarSign = "\u{24}";
let blackHeart = "\u{2665}";
let sparklingHeart = "\u{1F496}";

//定义空字符串
var emptyString = "";
var anotherEmptyString = String();

//检查是否为空
if emptyString.isEmpty{
    print("Nothing to see here");
}


var variableString = "Horse";
variableString += " and cariage";

let constantString = "Highlander";
//constantString += "and another Highlander";
// this reports a compile-time error - a constant string cannot be modified
for Character in "Dog!😎".characters{
    print(Character);
}

//字符串值可以由一个字符值数组作为参数传递给它的初始化
let catCahracters: [Character] = ["C","a","t","!","🐱"];
let carString = String(catCahracters);

//连接字符串
let string1 = "hello";
let string2 = " there";
var welcome = string1 + string2;

var instruction = "look over";
instruction += string2;

//追加字符串
let exclamationMark: Character = "!";
welcome.append(exclamationMark);

//插入
let mutiplier = 3;
let message = "\(mutiplier) times 2.5 is \(Double(mutiplier) * 2.5)";

//拉丁字母
let eAcute: Character = "\u{E9}";
let combinedEAcute: Character = "\u{65}\u{301}";

//韩语
let precomposed: Character = "\u{D55C}";
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}";

//特殊字符
let encloseEacute: Character = "\u{E9}\u{20DD}";
let parentheses: Character = "\u{20DD}";
let regionalINdicatorForUS: Character = "\u{1F1FA}\u{1F1F8}";

let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪";
print("unusualMenagerie has \(unusualMenagerie.characters.count) characters")

//e变为é
var word = "cafe";
print("the number of characters in \(word) is \(word.characters.count)");
word += "\u{301}";
print("the number of characters in \(word) is \(word.characters.count)")

//字符串索引
let greeting = "Guten Tag!";
greeting[greeting.startIndex];
//前导
greeting[greeting.endIndex.predecessor()];
//后导
greeting[greeting.startIndex.successor()];
//指定下标
let index = greeting.startIndex.advancedBy(7);
greeting[index];

for index in greeting.characters.indices{
    print("\(greeting[index])",terminator:"");
}


//插入和移除
var sayHi = "hello";
sayHi.insert("!", atIndex: sayHi.endIndex);
sayHi.insertContentsOf(" there".characters, at: sayHi.endIndex.predecessor());
sayHi.removeAtIndex(sayHi.endIndex.predecessor());
print(sayHi);
let range = sayHi.endIndex.advancedBy(-6)..<sayHi.endIndex;
sayHi.removeRange(range);

//比较字符串
let quotation = "We're a lot alike, you and I";
let sameQuotation = "We're a lot alike, you and I";
if quotation == sameQuotation {
    print("These two string are considered equal");
}

let eAcuteQuestion = "Voulez-vous un caf\u{E9}";
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}";
if eAcuteQuestion == combinedEAcuteQuestion {
    print("These two string are considered equal");
}

//拉丁字母和斯拉夫字母不一样
let latinCapitalLetterA: Character = "\u{41}";
let cyrillicCapitalLetterA: Character = "\u{0410}";
if latinCapitalLetterA != cyrillicCapitalLetterA {
    print("These two string are not equal");
}

//是否有前缀和后缀
let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
];

var act1SceneCount = 0;
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1") {
        act1SceneCount += 1;
    }
}
print("There are \(act1SceneCount) scenes in Act 1");

var mansionCount = 0;
var cellCount = 0;
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1;
    }else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1;
    }
}

//大小写
let normal = "Could you help me, please?"
let shouty = normal.uppercaseString
let whispered = normal.lowercaseString

//创建一个空数组
var someInts = [Int]();
print("someInts is of type [Int] with \(someInts.count) items");
someInts.append(3);
someInts = [];

//创建一个指定类型的数组
var threeDoubles = [Double](count: 3, repeatedValue: 0.1);

//通过两个数组建一个新数组
var anotherThreeDoubles = [Double](count: 5, repeatedValue: 2.5);
var eightDoubles = threeDoubles + anotherThreeDoubles;

//访问和修改数组
var shoppingList = ["Eggs","Milk"];
if shoppingList.isEmpty {
    print("The shoppingList is empty");
}else {
    print("The shoppingList is not empty");
}
//追加
shoppingList.append("Flour");
//用运算符（＋＝）
shoppingList += ["Baking Powder"];
shoppingList += ["Chocolate","Cheese","Butter"];
//取出数组中的一个值
var fistItem = shoppingList[0];
//通过索引改变数组中的值
shoppingList[0] = "Six eggs";
//改变一个范围的值,即使你改变的值和替换的值不一样长
shoppingList[4...6] = ["Bananas","Apples"];
//通过索引添加值
shoppingList.insert("Maple Syrup", atIndex: 1);
//删除一个值
let mapleSyrup = shoppingList.removeAtIndex(1);
let apple = shoppingList.removeLast();
fistItem = shoppingList[0];

//遍历数组
for (index, value) in shoppingList.enumerate() {
    print("Item \(index + 1): \(value)");
}


//集合
var letters = Set<Character>();
letters.insert("a");
letters = [];

//包含数组的集合
var favoriteGenres: Set<String> = ["Rock","Classical","Hip hop"];
var favoriteType: Set = ["Rock","Classical","Hip hop"];
print("I have \(favoriteType.count) favorite music genres.");
//是否包含
if favoriteGenres.contains("Funk") {
    print("I get up on the good food.");
}else{
    print("It's too funky in here");
}

//遍历
for genre in favoriteGenres {
    print("\(genre)");
}

//两个集合的操作
let oddDigits: Set = [1,3,5,7,9];
let evenDigits: Set = [0,2,4,6,8];
let singelDigitPrimeNumbers: Set = [2,3,5,7];

oddDigits.union(evenDigits).sort();
oddDigits.intersect(evenDigits).sort();
evenDigits.intersect(singelDigitPrimeNumbers).sort();
oddDigits.subtract(singelDigitPrimeNumbers).sort();
oddDigits.exclusiveOr(singelDigitPrimeNumbers).sort();

//两个集合的关系
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]
houseAnimals.isSubsetOf(farmAnimals);
farmAnimals.isSupersetOf(houseAnimals);
farmAnimals.isDisjointWith(cityAnimals);//是否不相交


//字典
var nameOfIntegers = [Int: String]();
nameOfIntegers[16] = "sixteen";
nameOfIntegers[1] = "one";
print(nameOfIntegers);
nameOfIntegers = [:];

//初始化一个字典
var airport: [String: String] = ["YYZ": "Toronto Pearson","DUB": "Dublin"];
//简写，可不写类型
var airports = ["YYZ": "Toronto Pearson","DUB": "Dublin"];
print("The airport dictionry contains \(airport.count) items.");
//判断是否为空
if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary is not empty.")
}
airport["LHR"] = "London";
airport["LHR"] = "London Heathrow";
//更新一个值
if let oldValue = airport.updateValue("Doubin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}
//判断是否有某个键
if let airportName = airport["DUB"] {
    print("The name of the airport is \(airportName).");
}else{
    print("That airport is not in the airports dictionary.");
}
//移除一个键值对
airport["APL"] = "Apple International";
print(airport);
airport["APL"] = nil;
print(airport);
//又返回值的移除一个键值对
if let removedValue = airport.removeValueForKey("DUB") {
    print("The removed airport's name is \(removedValue).");
}else{
    print("The airports dictionary does not contain a value for DUB.");
}
//遍历字典
for (airportCode, airportName) in airport {
    print("\(airportCode): \(airportName)");
}

for airportCode in airport.keys {
    print("Airport code: \(airportCode)");
}

for airportName in airport.values {
    print("Airport name: \(airportName)");
}

let airportCodes = [String](airport.keys);
let airportNames = [String](airport.values);

//控制流
//for-in Loop
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
//如果不需要序列中的值，可以忽略这些值用下划线代替变量名
let base = 3;
let power = 10;
var answer = 1;
for _ in 1...power{
    answer *= base;
}
print("\(base) to the power of \(power) is \(answer)"); //求三的十次方
//遍历字典
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4];
for (animalName, legCount) in numberOfLegs {
    print("\(animalName) have \(legCount) legs");
}

//while Loops
//jkjkjk



















