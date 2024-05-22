
//codelab 1
class Bicycle {
  int cadence;
  int _speed = 0;
  int get speed => _speed;
  int gear;

  Bicycle(this.cadence, this.gear);

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() => 'Bicycle: $_speed mph';
}

void main() {
  var bike = Bicycle(2, 1);
  print(bike);
}

Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});
@override
String toString() =>
      'Origin: (${origin.x}, ${origin.y}), width: $width, height: $height';
main() {
  print(Rectangle(origin: const Point(10, 20), width: 100, height: 200));
  print(Rectangle(origin: const Point(10, 10)));
  print(Rectangle(width: 200));
  print(Rectangle());
}

Origin: (10, 20), width: 100, height: 200
Origin: (10, 10), width: 0, height: 0
Origin: (0, 0), width: 200, height: 0
Origin: (0, 0), width: 0, height: 0


import 'dart:math';

abstract class Shape {
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

main() {
  final circle = Circle(2);
  final square = Square(2);
  print(circle.area);
  print(square.area);
}

Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(2);
  throw 'Can\'t create $type.';
}

final circle = shapeFactory('circle');
  final square = shapeFactory('square');

abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'Can\'t create $type.';
  }
  num get area;
}

final circle = Shape('circle');
final square = Shape('square');


class CircleMock implements Circle {}
class CircleMock implements Circle {
  num area;
  num radius;
}

String scream(int length) => "A${'a' * length}h!";

main() {
  final values = [1, 2, 3, 5, 10, 50];
  for (var length in values) {
    print(scream(length));
  }
}

values.map(scream).forEach(print);

values.skip(1).take(3).map(scream).forEach(print);


//codelab 2
String stringify(int x, int y) {
  TODO('Return a formatted string here');
}


// Tests your solution (Don't edit!): 
void main() {
  assert(stringify(2, 3) == '2 3',
      "Your stringify method returned '${stringify(2, 3)}' instead of '2 3'");
  print('Success!');
}
---
// TODO: Declare the two variables here
// Tests your solution (Don't edit!): 
void main() {
  try {
    if (name == 'Jane' && address == null) {
      // verify that "name" is nullable
      name = null;
      print('Success!');
    } else {
      print('Not quite right, try again!');
    }
  } catch (e) {
    print('Exception: ${e.runtimeType}');
  }
}


String? foo = 'a string';
String? bar; // = null
// Substitute an operator that makes 'a string' be assigned to baz.
String? baz = foo /* TODO */ bar;
void updateSomeVars() {
  // Substitute an operator that makes 'a string' be assigned to bar.
  bar /* TODO */ 'a string';
}
// Tests your solution (Don't edit!):
void main() {
  try {
    updateSomeVars();
    
    if (foo != 'a string') {
      print('Looks like foo somehow ended up with the wrong value.');
    } else if (bar != 'a string') {
      print('Looks like bar ended up with the wrong value.');
    } else if (baz != 'a string') {
      print('Looks like baz ended up with the wrong value.');
    } else {
      print('Success!');
    }
  } catch (e) {
    print('Exception: ${e.runtimeType}.');
  }
  
}


String? upperCaseIt(String? str) {
  // TODO: Try conditionally accessing the `toUpperCase` method here.
}
// Tests your solution (Don't edit!):
void main() {
  try {
    String? one = upperCaseIt(null);
    if (one != null) {
      print('Looks like you\'re not returning null for null inputs.');
    } else {
      print('Success when str is null!');
    }
  } catch (e) {
    print('Tried calling upperCaseIt(null) and got an exception: \n ${e.runtimeType}.');
  }
  
  try {
    String? two = upperCaseIt('a string');
    if (two == null) {
      print('Looks like you\'re returning null even when str has a value.');
    } else if (two != 'A STRING') {
      print('Tried upperCaseIt(\'a string\'), but didn\'t get \'A STRING\' in response.');
    } else {
      print('Success when str is not null!');
    }
  } catch (e) {
    print('Tried calling upperCaseIt(\'a string\') and got an exception: \n ${e.runtimeType}.');
  }
}
--
// Assign this a list containing 'a', 'b', and 'c' in that order:
final aListOfStrings = null;

// Assign this a set containing 3, 4, and 5:
final aSetOfInts = null;

// Assign this a map of String to int so that aMapOfStringsToInts['myKey'] returns 12:
final aMapOfStringsToInts = null;

// Assign this an empty List<double>:
final anEmptyListOfDouble = null;

// Assign this an empty Set<String>:
final anEmptySetOfString = null;

// Assign this an empty Map of double to int:
final anEmptyMapOfDoublesToInts = null;


// Tests your solution (Don't edit!):
void main() {
  final errs = <String>[];
  
  if (aListOfStrings is! List<String>) {
    errs.add('aListOfStrings should have the type List<String>.');
  } else if (aListOfStrings.length != 3) {
    errs.add('aListOfStrings has ${aListOfStrings.length} items in it, \n rather than the expected 3.');
  } else if (aListOfStrings[0] != 'a' || aListOfStrings[1] != 'b' || aListOfStrings[2] != 'c') {
    errs.add('aListOfStrings doesn\'t contain the correct values (\'a\', \'b\', \'c\').');
  }

  if (aSetOfInts is! Set<int>) {
    errs.add('aSetOfInts should have the type Set<int>.');
  } else if (aSetOfInts.length != 3) {
    errs.add('aSetOfInts has ${aSetOfInts.length} items in it, \n rather than the expected 3.');
  } else if (!aSetOfInts.contains(3) || !aSetOfInts.contains(4) || !aSetOfInts.contains(5)) {
    errs.add('aSetOfInts doesn\'t contain the correct values (3, 4, 5).');
  }

  if (aMapOfStringsToInts is! Map<String, int>) {
    errs.add('aMapOfStringsToInts should have the type Map<String, int>.');
  } else if (aMapOfStringsToInts['myKey'] != 12) {
    errs.add('aMapOfStringsToInts doesn\'t contain the correct values (\'myKey\': 12).');
  }

  if (anEmptyListOfDouble is! List<double>) {
    errs.add('anEmptyListOfDouble should have the type List<double>.');
  } else if (anEmptyListOfDouble.isNotEmpty) {
    errs.add('anEmptyListOfDouble should be empty.');
  }

  if (anEmptySetOfString is! Set<String>) {
    errs.add('anEmptySetOfString should have the type Set<String>.');
  } else if (anEmptySetOfString.isNotEmpty) {
    errs.add('anEmptySetOfString should be empty.');
  }

  if (anEmptyMapOfDoublesToInts is! Map<double, int>) {
    errs.add('anEmptyMapOfDoublesToInts should have the type Map<double, int>.');
  } else if (anEmptyMapOfDoublesToInts.isNotEmpty) {
    errs.add('anEmptyMapOfDoublesToInts should be empty.');
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }

  // ignore_for_file: unnecessary_type_check
}

class MyClass {
  int value1 = 2;
  int value2 = 3;
  int value3 = 5;
  
  // Returns the product of the above values:
  int get product => TODO();
  
  // Adds 1 to value1:
  void incrementValue1() => TODO();
  
  // Returns a string containing each item in the
  // list, separated by commas (e.g. 'a,b,c'): 
  String joinWithCommas(List<String> strings) => TODO();
}


// Tests your solution (Don't edit!):
void main() {
  final obj = MyClass();
  final errs = <String>[];
  
  try {
    final product = obj.product;
    
    if (product != 30) {
      errs.add('The product property returned $product \n instead of the expected value (30).'); 
    } 
  } catch (e) {
    print('Tried to use MyClass.product, but encountered an exception: \n ${e.runtimeType}.');
    return;
  }

  try {
    obj.incrementValue1();
    
    if (obj.value1 != 3) {
      errs.add('After calling incrementValue, value1 was ${obj.value1} \n instead of the expected value (3).'); 
    } 
  } catch (e) {
    print('Tried to use MyClass.incrementValue1, but encountered an exception: \n ${e.runtimeType}.');
    return;
  }

  try {
    final joined = obj.joinWithCommas(['one', 'two', 'three']);
    
    if (joined != 'one,two,three') {
      errs.add('Tried calling joinWithCommas([\'one\', \'two\', \'three\']) \n and received $joined instead of the expected value (\'one,two,three\').'); 
    } 
  } catch (e) {
    print('Tried to use MyClass.joinWithCommas, but encountered an exception: \n ${e.runtimeType}.');
    return;
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}

class BigObject {
  int anInt = 0;
  String aString = '';
  List<double> aList = [];
  bool _done = false;
  
  void allDone() {
    _done = true;
  }
}

BigObject fillBigObject(BigObject obj) {
  // Create a single statement that will update and return obj:
  return TODO('obj..');
}


// Tests your solution (Don't edit!):
void main() {
  BigObject obj;

  try {
    obj = fillBigObject(BigObject());
  } catch (e) {
    print('Caught an exception of type ${e.runtimeType} \n while running fillBigObject');
    return;
  }

  final errs = <String>[];

  if (obj.anInt != 1) {
    errs.add(
        'The value of anInt was ${obj.anInt} \n rather than the expected (1).');
  }

  if (obj.aString != 'String!') {
    errs.add(
        'The value of aString was \'${obj.aString}\' \n rather than the expected (\'String!\').');
  }

  if (obj.aList.length != 1) {
    errs.add(
        'The length of aList was ${obj.aList.length} \n rather than the expected value (1).');
  } else {
    if (obj.aList[0] != 3.0) {
      errs.add(
          'The value found in aList was ${obj.aList[0]} \n rather than the expected (3.0).');
    }
  }
  
  if (!obj._done) {
    errs.add('It looks like allDone() wasn\'t called.');
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}

class InvalidPriceException {}

class ShoppingCart {
  List<double> _prices = [];
  
  // TODO: Add a "total" getter here:

  // TODO: Add a "prices" setter here:
}


// Tests your solution (Don't edit!):
void main() {
  var foundException = false;
  
  try {
    final cart = ShoppingCart();
    cart.prices = [12.0, 12.0, -23.0];
  } on InvalidPriceException {
    foundException = true;
  } catch (e) {
    print('Tried setting a negative price and received a ${e.runtimeType} \n instead of an InvalidPriceException.');
    return;
  }
  
  if (!foundException) {
    print('Tried setting a negative price \n and didn\'t get an InvalidPriceException.');
    return;
  }
  
  final secondCart = ShoppingCart();
  
  try {
    secondCart.prices = [1.0, 2.0, 3.0];
  } catch(e) {
    print('Tried setting prices with a valid list, \n but received an exception: ${e.runtimeType}.');
    return;
  }
  
  if (secondCart._prices.length != 3) {
    print('Tried setting prices with a list of three values, \n but _prices ended up having length ${secondCart._prices.length}.');
    return;
  }

  if (secondCart._prices[0] != 1.0 || secondCart._prices[1] != 2.0 || secondCart._prices[2] != 3.0) {
    final vals = secondCart._prices.map((p) => p.toString()).join(', ');
    print('Tried setting prices with a list of three values (1, 2, 3), \n but incorrect ones ended up in the price list ($vals) .');
    return;
  }
  
  var sum = 0.0;
  
  try {
    sum = secondCart.total;
  } catch (e) {
    print('Tried to get total, but received an exception: ${e.runtimeType}.');
    return;
  }
  
  if (sum != 6.0) {
    print('After setting prices to (1, 2, 3), total returned $sum instead of 6.');
    return;
  }
  
  print('Success!');
}



String joinWithCommas(int a, [int? b, int? c, int? d, int? e]) {
  return TODO();
}


// Tests your solution (Don't edit!):
void main() {
  final errs = <String>[];
  
  try {
    final value = joinWithCommas(1);
    
    if (value != '1') {
      errs.add('Tried calling joinWithCommas(1) \n and got $value instead of the expected (\'1\').'); 
    } 
  } on UnimplementedError {
    print('Tried to call joinWithCommas but failed. \n Did you implement the method?');
    return;
  } catch (e) {
    print('Tried calling joinWithCommas(1), \n but encountered an exception: ${e.runtimeType}.');
    return;
  }

  try {
    final value = joinWithCommas(1, 2, 3);
    
    if (value != '1,2,3') {
      errs.add('Tried calling joinWithCommas(1, 2, 3) \n and got $value instead of the expected (\'1,2,3\').'); 
    } 
  } on UnimplementedError {
    print('Tried to call joinWithCommas but failed. \n Did you implement the method?');
    return;
  } catch (e) {
    print('Tried calling joinWithCommas(1, 2 ,3), \n but encountered an exception: ${e.runtimeType}.');
    return;
  }

  try {
    final value = joinWithCommas(1, 2, 3, 4, 5);
    
    if (value != '1,2,3,4,5') {
      errs.add('Tried calling joinWithCommas(1, 2, 3, 4, 5) \n and got $value instead of the expected (\'1,2,3,4,5\').'); 
    } 
  } on UnimplementedError {
    print('Tried to call joinWithCommas but failed. \n Did you implement the method?');
    return;
  } catch (e) {
    print('Tried calling stringify(1, 2, 3, 4 ,5), \n but encountered an exception: ${e.runtimeType}.');
    return;
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}
class MyDataObject {
  final int anInt;
  final String aString;
  final double aDouble;

  MyDataObject({
     this.anInt = 1,
     this.aString = 'Old!',
     this.aDouble = 2.0,
  });

  // TODO: Add your copyWith method here:
}


// Tests your solution (Don't edit!):
void main() {
  final source = MyDataObject();
  final errs = <String>[];
  
  try {
    final copy = source.copyWith(newInt: 12, newString: 'New!', newDouble: 3.0);
    
    if (copy.anInt != 12) {
      errs.add('Called copyWith(newInt: 12, newString: \'New!\', newDouble: 3.0), \n and the new object\'s anInt was ${copy.anInt} rather than the expected value (12).');
    }
    
    if (copy.aString != 'New!') {
      errs.add('Called copyWith(newInt: 12, newString: \'New!\', newDouble: 3.0), \n and the new object\'s aString was ${copy.aString} rather than the expected value (\'New!\').');
    }
    
    if (copy.aDouble != 3) {
      errs.add('Called copyWith(newInt: 12, newString: \'New!\', newDouble: 3.0), \n and the new object\'s aDouble was ${copy.aDouble} rather than the expected value (3).');
    }
  } catch (e) {
    print('Called copyWith(newInt: 12, newString: \'New!\', newDouble: 3.0) \n and got an exception: ${e.runtimeType}');
  }
  
  try {
    final copy = source.copyWith();
    
    if (copy.anInt != 1) {
      errs.add('Called copyWith(), and the new object\'s anInt was ${copy.anInt} \n rather than the expected value (1).');
    }
    
    if (copy.aString != 'Old!') {
      errs.add('Called copyWith(), and the new object\'s aString was ${copy.aString} \n rather than the expected value (\'Old!\').');
    }
    
    if (copy.aDouble != 2) {
      errs.add('Called copyWith(), and the new object\'s aDouble was ${copy.aDouble} \n rather than the expected value (2).');
    }
  } catch (e) {
    print('Called copyWith() and got an exception: ${e.runtimeType}');
  }
  
  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}


try {
  breedMoreLlamas();
} on OutOfLlamasException {
  // A specific exception
  buyMoreLlamas();
} on Exception catch (e) {
  // Anything else that is an exception
  print('Unknown exception: $e');
} catch (e) {
  // No specified type, handles all
  print('Something really unknown: $e');
}


typedef VoidFunction = void Function();

class ExceptionWithMessage {
  final String message;
  const ExceptionWithMessage(this.message);
}

// Call logException to log an exception, and doneLogging when finished.
abstract class Logger {
  void logException(Type t, [String? msg]);
  void doneLogging();
}

void tryFunction(VoidFunction untrustworthy, Logger logger) {
  // Invoking this method might cause an exception. 
  // TODO: Catch and handle them using try-on-catch-finally.
  untrustworthy();
}


// Tests your solution (Don't edit!):
class MyLogger extends Logger {
  Type? lastType;
  String lastMessage = '';
  bool done = false;
  
  void logException(Type t, [String? message]) {
    lastType = t;
    lastMessage = message ?? lastMessage;
  }
  
  void doneLogging() => done = true;  
}

void main() {
  final errs = <String>[];
  var logger = MyLogger();
  
  try {
    tryFunction(() => throw Exception(), logger);
  
    if ('${logger.lastType}' != 'Exception' && '${logger.lastType}' != '_Exception') {
      errs.add('Untrustworthy threw an Exception, but a different type was logged: \n ${logger.lastType}.');
    }
    
    if (logger.lastMessage != '') {
      errs.add('Untrustworthy threw an Exception with no message, but a message \n was logged anyway: \'${logger.lastMessage}\'.');
    }
    
    if (!logger.done) {
      errs.add('Untrustworthy threw an Exception, \n and doneLogging() wasn\'t called afterward.');
    }
  } catch (e) {
    print('Untrustworthy threw an exception, and an exception of type \n ${e.runtimeType} was unhandled by tryFunction.');
  }
  
  logger = MyLogger();
  
  try {
    tryFunction(() => throw ExceptionWithMessage('Hey!'), logger);
  
    if (logger.lastType != ExceptionWithMessage) {
      errs.add('Untrustworthy threw an ExceptionWithMessage(\'Hey!\'), but a \n different type was logged: ${logger.lastType}.');
    }
    
    if (logger.lastMessage != 'Hey!') {
      errs.add('Untrustworthy threw an ExceptionWithMessage(\'Hey!\'), but a \n different message was logged: \'${logger.lastMessage}\'.');
    }
    
    if (!logger.done) {
      errs.add('Untrustworthy threw an ExceptionWithMessage(\'Hey!\'), \n and doneLogging() wasn\'t called afterward.');
    }
  } catch (e) {
    print('Untrustworthy threw an ExceptionWithMessage(\'Hey!\'), \n and an exception of type ${e.runtimeType} was unhandled by tryFunction.');
  }
  
  logger = MyLogger();
  bool caughtStringException = false;

  try {
    tryFunction(() => throw 'A String', logger);
  } on String {
    caughtStringException = true;
  }

  if (!caughtStringException) {
    errs.add('Untrustworthy threw a string, and it was incorrectly handled inside tryFunction().');
  }
  
  logger = MyLogger();
  
  try {
    tryFunction(() {}, logger);
  
    if (logger.lastType != null) {
      errs.add('Untrustworthy didn\'t throw an Exception, \n but one was logged anyway: ${logger.lastType}.');
    }
    
    if (logger.lastMessage != '') {
      errs.add('Untrustworthy didn\'t throw an Exception with no message, \n but a message was logged anyway: \'${logger.lastMessage}\'.');
    }
    
    if (!logger.done) {
      errs.add('Untrustworthy didn\'t throw an Exception, \n but doneLogging() wasn\'t called afterward.');
    }
  } catch (e) {
    print('Untrustworthy didn\'t throw an exception, \n but an exception of type ${e.runtimeType} was unhandled by tryFunction anyway.');
  }
  
  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}


class MyClass {
  final int anInt;
  final String aString;
  final double aDouble;
  
  // TODO: Create the constructor here.
}


// Tests your solution (Don't edit!):
void main() {
  final errs = <String>[];
  
  try {
    final obj = MyClass(1, 'two', 3);
    
    if (obj.anInt != 1) {
      errs.add('Called MyClass(1, \'two\', 3) and got an object with anInt of ${obj.anInt} \n instead of the expected value (1).');
    }

    if (obj.anInt != 1) {
      errs.add('Called MyClass(1, \'two\', 3) and got an object with aString of \'${obj.aString}\' \n instead of the expected value (\'two\').');
    }

    if (obj.anInt != 1) {
      errs.add('Called MyClass(1, \'two\', 3) and got an object with aDouble of ${obj.aDouble} \n instead of the expected value (3).');
    }
  } catch (e) {
    print('Called MyClass(1, \'two\', 3) and got an exception \n of type ${e.runtimeType}.');
  }
  
  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}
class FirstTwoLetters {
  final String letterOne;
  final String letterTwo;

  // TODO: Create a constructor with an initializer list here:
  FirstTwoLetters(String word)

}


// Tests your solution (Don't edit!):
void main() {
  final errs = <String>[];

  try {
    final result = FirstTwoLetters('My String');
    
    if (result.letterOne != 'M') {
      errs.add('Called FirstTwoLetters(\'My String\') and got an object with \n letterOne equal to \'${result.letterOne}\' instead of the expected value (\'M\').');
    }

    if (result.letterTwo != 'y') {
      errs.add('Called FirstTwoLetters(\'My String\') and got an object with \n letterTwo equal to \'${result.letterTwo}\' instead of the expected value (\'y\').');
    }
  } catch (e) {
    errs.add('Called FirstTwoLetters(\'My String\') and got an exception \n of type ${e.runtimeType}.');
  }

  bool caughtException = false;
  
  try {
    FirstTwoLetters('');
  } catch (e) {
    caughtException = true;
  }
  
  if (!caughtException) {
    errs.add('Called FirstTwoLetters(\'\') and didn\'t get an exception \n from the failed assertion.');
  }
  
  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}

--
class Color {
  int red;
  int green;
  int blue;
  
  Color(this.red, this.green, this.blue);

  // TODO: Create a named constructor called "Color.black" here:

}


// Tests your solution (Don't edit!):
void main() {
  final errs = <String>[];

  try {
    final result = Color.black();
    
    if (result.red != 0) {
      errs.add('Called Color.black() and got a Color with red equal to \n ${result.red} instead of the expected value (0).');
    }

    if (result.green != 0) {
      errs.add('Called Color.black() and got a Color with green equal to \n ${result.green} instead of the expected value (0).');
    }

    if (result.blue != 0) {
  errs.add('Called Color.black() and got a Color with blue equal to \n ${result.blue} instead of the expected value (0).');
    }
  } catch (e) {
    print('Called Color.black() and got an exception of type \n ${e.runtimeType}.');
    return;
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}
class Square extends Shape {}

class Circle extends Shape {}

class Shape {
  Shape();

  factory Shape.fromTypeName(String typeName) {
    if (typeName == 'square') return Square();
    if (typeName == 'circle') return Circle();

    throw ArgumentError('Unrecognized $typeName');
  }
}


class IntegerHolder {
  IntegerHolder();
  
  // Implement this factory constructor.
  factory IntegerHolder.fromList(List<int> list) {
    TODO();
  }
}

class IntegerSingle extends IntegerHolder {
  final int a;
  IntegerSingle(this.a); 
}

class IntegerDouble extends IntegerHolder {
  final int a;
  final int b;
  IntegerDouble(this.a, this.b); 
}

class IntegerTriple extends IntegerHolder {
  final int a;
  final int b;
  final int c;
  IntegerTriple(this.a, this.b, this.c); 
}


// Tests your solution (Don't edit!):
void main() {
  final errs = <String>[];

  bool _throwed = false;
  try {
    IntegerHolder.fromList([]);
  } on UnimplementedError {
    print('Test failed. Did you implement the method?');
    return;
  } on Error {
    _throwed = true;
  } catch (e) {
    print('Called IntegerSingle.fromList([]) and got an exception of \n type ${e.runtimeType}.');
    return;
  }
  
  if (!_throwed) {
    errs.add('Called IntegerSingle.fromList([]) and didn\'t throw Error.');
  } 

  try {
    final obj = IntegerHolder.fromList([1]);
    
    if (obj is! IntegerSingle) {
      errs.add('Called IntegerHolder.fromList([1]) and got an object of type \n ${obj.runtimeType} instead of IntegerSingle.');
    } else {
      if (obj.a != 1) {
        errs.add('Called IntegerHolder.fromList([1]) and got an IntegerSingle with \n  an \'a\' value of ${obj.a} instead of the expected (1).');
      }
    }
  } catch (e) {
    print('Called IntegerHolder.fromList([]) and got an exception of \n type ${e.runtimeType}.');
    return;
  }

  try {
    final obj = IntegerHolder.fromList([1, 2]);
    
    if (obj is! IntegerDouble) {
      errs.add('Called IntegerHolder.fromList([1, 2]) and got an object of type \n ${obj.runtimeType} instead of IntegerDouble.');
    } else {
      if (obj.a != 1) {
        errs.add('Called IntegerHolder.fromList([1, 2]) and got an IntegerDouble \n with an \'a\' value of ${obj.a} instead of the expected (1).');
      }
      
      if (obj.b != 2) {
        errs.add('Called IntegerHolder.fromList([1, 2]) and got an IntegerDouble \n with an \'b\' value of ${obj.b} instead of the expected (2).');
      }
    }
  } catch (e) {
    print('Called IntegerHolder.fromList([1, 2]) and got an exception \n of type ${e.runtimeType}.');
    return;
  }

  try {
    final obj = IntegerHolder.fromList([1, 2, 3]);
    
    if (obj is! IntegerTriple) {
      errs.add('Called IntegerHolder.fromList([1, 2, 3]) and got an object of type \n ${obj.runtimeType} instead of IntegerTriple.');
    } else {
      if (obj.a != 1) {
        errs.add('Called IntegerHolder.fromList([1, 2, 3]) and got an IntegerTriple \n with an \'a\' value of ${obj.a} instead of the expected (1).');
      }
      
      if (obj.b != 2) {
        errs.add('Called IntegerHolder.fromList([1, 2, 3]) and got an IntegerTriple \n with an \'a\' value of ${obj.b} instead of the expected (2).');
      }

      if (obj.c != 3) {
        errs.add('Called IntegerHolder.fromList([1, 2, 3]) and got an IntegerTriple \n with an \'a\' value of ${obj.b} instead of the expected (2).');
      }
    }
  } catch (e) {
    print('Called IntegerHolder.fromList([1, 2, 3]) and got an exception \n of type ${e.runtimeType}.');
    return;
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}

class Automobile {
  String make;
  String model;
  int mpg;

  // The main constructor for this class.
  Automobile(this.make, this.model, this.mpg);

  // Delegates to the main constructor.
  Automobile.hybrid(String make, String model) : this(make, model, 60);

  // Delegates to a named constructor
  Automobile.fancyHybrid() : this.hybrid('Futurecar', 'Mark 2');
}

class Color {
  int red;
  int green;
  int blue;
  
  Color(this.red, this.green, this.blue);

  // TODO: Create a named constructor called "black" here
  // and redirect it to call the existing constructor
}


// Tests your solution (Don't edit!):
void main() {
  final errs = <String>[];

  try {
    final result = Color.black();
    
    if (result.red != 0) {
      errs.add('Called Color.black() and got a Color with red equal to \n ${result.red} instead of the expected value (0).');
    }

    if (result.green != 0) {
      errs.add('Called Color.black() and got a Color with green equal to \n ${result.green} instead of the expected value (0).');
    }

    if (result.blue != 0) {
  errs.add('Called Color.black() and got a Color with blue equal to \n ${result.blue} instead of the expected value (0).');
    }
  } catch (e) {
    print('Called Color.black() and got an exception of type ${e.runtimeType}.');
    return;
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}


class ImmutablePoint {
  static const ImmutablePoint origin = ImmutablePoint(0, 0);

  final int x;
  final int y;

  const ImmutablePoint(this.x, this.y);
}


class Recipe {
  List<String> ingredients;
  int calories;
  double milligramsOfSodium;

  // TODO: Create a const constructor here"

}


// Tests your solution (Don't edit!):
void main() {
  final errs = <String>[];

  try {
    const obj = Recipe(['1 egg', 'Pat of butter', 'Pinch salt'], 120, 200);
    
    if (obj.ingredients.length != 3) {
      errs.add('Called Recipe([\'1 egg\', \'Pat of butter\', \'Pinch salt\'], 120, 200) \n and got an object with ingredient list of length ${obj.ingredients.length} rather than the expected length (3).');
    }
    
    if (obj.calories != 120) {
      errs.add('Called Recipe([\'1 egg\', \'Pat of butter\', \'Pinch salt\'], 120, 200) \n and got an object with a calorie value of ${obj.calories} rather than the expected value (120).');
    }
    
    if (obj.milligramsOfSodium != 200) {
      errs.add('Called Recipe([\'1 egg\', \'Pat of butter\', \'Pinch salt\'], 120, 200) \n and got an object with a milligramsOfSodium value of ${obj.milligramsOfSodium} rather than the expected value (200).');
    }
  } catch (e) {
    print('Tried calling Recipe([\'1 egg\', \'Pat of butter\', \'Pinch salt\'], 120, 200) \n and received a null.');
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}


//Codelab 3
void main() {
  const iterable = ['Salad', 'Popcorn', 'Toast'];
  for (final element in iterable) {
    print(element);
  }
}

void main() {
  Iterable<String> iterable = const ['Salad', 'Popcorn', 'Toast'];
  print('The first element is ${iterable.first}');
  print('The last element is ${iterable.last}');
}

bool predicate(String item) {
  return item.length > 5;
}

void main() {
  const items = ['Salad', 'Popcorn', 'Toast', 'Lasagne'];

  // You can find with a simple expression:
  var foundItem1 = items.firstWhere((item) => item.length > 5);
  print(foundItem1);

  // Or try using a function block:
  var foundItem2 = items.firstWhere((item) {
    return item.length > 5;
  });
  print(foundItem2);

  // Or even pass in a function reference:
  var foundItem3 = items.firstWhere(predicate);
  print(foundItem3);

  // You can also use an `orElse` function in case no value is found!
  var foundItem4 = items.firstWhere(
    (item) => item.length > 10,
    orElse: () => 'None!',
  );
  print(foundItem4);
}

// Implement the predicate of singleWhere
// with the following conditions
// * The element contains the character `'a'`
// * The element starts with the character `'M'`
String singleWhere(Iterable<String> items) {
  return items.singleWhere(TODO('Implement the outlined predicate.'));
}

// The following code is used to provide feedback on your solution.
// There is no need to read or modify it.
void main() {
  const items = [
    'Salad',
    'Popcorn',
    'Milk',
    'Toast',
    'Sugar',
    'Mozzarella',
    'Tomato',
    'Egg',
    'Water',
  ];

  try {
    final str = singleWhere(items);
    if (str == 'Mozzarella') {
      print('Success. All tests passed!');
    } else {
      print(
        'Tried calling singleWhere, but received $str instead of '
        'the expected value \'Mozzarella\'',
      );
    }
  } on StateError catch (stateError) {
    print(
      'Tried calling singleWhere, but received a StateError: ${stateError.message}. '
      'singleWhere will fail if 0 or many elements match the predicate.',
    );
  } on UnimplementedError {
    print(
      'Tried running `singleWhere`, but received an error. '
      'Did you implement the function?',
    );
  } catch (e) {
    print('Tried calling singleWhere, but received an exception: $e');
  }
}

void main() {
  const items = ['Salad', 'Popcorn', 'Toast'];

  if (items.any((item) => item.contains('a'))) {
    print('At least one item contains "a"');
  }

  if (items.every((item) => item.length >= 5)) {
    print('All items have length >= 5');
  }
}
--
if (items.any((item) => item.contains('Z'))) {
  print('At least one item contains "Z"');
} else {
  print('No item contains "Z"');
}

bool anyUserUnder18(Iterable<User> users) {
  // TODO: Implement the anyUserUnder18 function.
}

bool everyUserOver13(Iterable<User> users) {
  // TODO: Implement the everyUserOver13 function.
}

class User {
  final String name;
  final int age;

  User(
    this.name,
    this.age,
  );
}

// The following code is used to provide feedback on your solution.
// There is no need to read or modify it.
void main() {
  final users = [
    User('Alice', 21),
    User('Bob', 17),
    User('Claire', 52),
    User('David', 14),
  ];

  try {
    final out = anyUserUnder18(users);
    if (!out) {
      print('Looks like `anyUserUnder18` is wrong. Keep trying!');
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `anyUserUnder18`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print('Tried running `anyUserUnder18`, but received an exception: $e');
    return;
  }

  try {
    // with only one user older than 18, should be false
    final out = anyUserUnder18([User('Alice', 21)]);
    if (out) {
      print(
          'Looks like `anyUserUnder18` is wrong. What if all users are over 18?');
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `anyUserUnder18`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
      'Tried running `anyUserUnder18([User("Alice", 21)])`, '
      'but received an exception: $e',
    );
    return;
  }

  try {
    final out = everyUserOver13(users);
    if (!out) {
      print(
        'Looks like `everyUserOver13` is wrong. '
        'There are no users under 13!',
      );
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `everyUserOver13`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
      'Tried running `everyUserOver13`, '
      'but received an exception: $e',
    );
    return;
  }

  try {
    final out = everyUserOver13([User('Dan', 12)]);
    if (out) {
      print(
        'Looks like `everyUserOver13` is wrong. '
        'There is at least one user under 13!',
      );
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `everyUserOver13`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
      'Tried running `everyUserOver13([User(\'Dan\', 12)])`, '
      'but received an exception: $e',
    );
    return;
  }

  print('Success. All tests passed!');
}


void main() {
  var evenNumbers = const [1, -2, 3, 42].where((number) => number.isEven);

  for (final number in evenNumbers) {
    print('$number is even.');
  }

  if (evenNumbers.any((number) => number.isNegative)) {
    print('evenNumbers contains negative numbers.');
  }

  // If no element satisfies the predicate, the output is empty.
  var largeNumbers = evenNumbers.where((number) => number > 1000);
  if (largeNumbers.isEmpty) {
    print('largeNumbers is empty!');
  }
}

void main() {
  const numbers = [1, 3, -2, 0, 4, 5];

  var numbersUntilZero = numbers.takeWhile((number) => number != 0);
  print('Numbers until 0: $numbersUntilZero');

  var numbersStartingAtZero = numbers.skipWhile((number) => number != 0);
  print('Numbers starting at 0: $numbersStartingAtZero');
}
Iterable<User> filterOutUnder21(Iterable<User> users) {
  // TODO: Implement the filterOutUnder21 function.
}

Iterable<User> findShortNamed(Iterable<User> users) {
  // TODO: Implement the findShortNamed function.
}

class User {
  final String name;
  final int age;

  User(
    this.name,
    this.age,
  );
}

// The following code is used to provide feedback on your solution.
// There is no need to read or modify it.
void main() {
  final users = [
    User('Alice', 21),
    User('Bob', 17),
    User('Claire', 52),
    User('Dan', 12),
  ];

  try {
    final out = filterOutUnder21(users);
    if (out.any((user) => user.age < 21) || out.length != 2) {
      print(
        'Looks like `filterOutUnder21` is wrong, there are '
        'exactly two users with age under 21. Keep trying!',
      );
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `filterOutUnder21`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
      'Tried running `filterOutUnder21`, '
      'but received an exception: ${e.runtimeType}',
    );
    return;
  }

  try {
    final out = findShortNamed(users);
    if (out.any((user) => user.name.length > 3) || out.length != 2) {
      print(
        'Looks like `findShortNamed` is wrong, there are '
        'exactly two users with a three letter name. Keep trying!',
      );
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `findShortNamed`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
      'Tried running `findShortNamed`, '
      'but received an exception: ${e.runtimeType}',
    );
    return;
  }

  print('Success. All tests passed!');
}
void main() {
  var numbersByTwo = const [1, -2, 3, 42].map((number) => number * 2);
  print('Numbers: $numbersByTwo');
}


Iterable<String> output = numbers.map((number) => number.toString());


Iterable<String> getNameAndAges(Iterable<User> users) {
  // TODO: Implement the getNameAndAges function.
}

class User {
  final String name;
  final int age;

  User(
    this.name,
    this.age,
  );
}

// The following code is used to provide feedback on your solution.
// There is no need to read or modify it.
void main() {
  final users = [
    User('Alice', 21),
    User('Bob', 17),
    User('Claire', 52),
  ];

  try {
    final out = getNameAndAges(users).toList();
    if (!_listEquals(out, ['Alice is 21', 'Bob is 17', 'Claire is 52'])) {
      print(
        'Looks like `getNameAndAges` is wrong. Keep trying! '
        'The output was: $out',
      );
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `getNameAndAges`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print('Tried running the function, but received an exception: $e');
    return;
  }

  print('Success. All tests passed!');
}

bool _listEquals<T>(List<T>? a, List<T>? b) {
  if (a == null) return b == null;
  if (b == null || a.length != b.length) return false;
  for (var index = 0; index < a.length; index += 1) {
    if (a[index] != b[index]) return false;
  }
  return true;
}

Iterable<EmailAddress> parseEmailAddresses(Iterable<String> strings) {
  // TODO: Implement the parseEmailAddresses function.
}

bool anyInvalidEmailAddress(Iterable<EmailAddress> emails) {
  // TODO: Implement the anyInvalidEmailAddress function.
}

Iterable<EmailAddress> validEmailAddresses(Iterable<EmailAddress> emails) {
  // TODO: Implement the validEmailAddresses function.
}

class EmailAddress {
  final String address;

  EmailAddress(this.address);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailAddress && address == other.address;

  @override
  int get hashCode => address.hashCode;

  @override
  String toString() => 'EmailAddress{address: $address}';
}

// The following code is used to provide feedback on your solution.
// There is no need to read or modify it.
void main() {
  const input = [
    'ali@gmail.com',
    'bobgmail.com',
    'cal@gmail.com',
  ];

  const correctInput = ['dash@gmail.com', 'sparky@gmail.com'];

  bool _listEquals<T>(List<T>? a, List<T>? b) {
    if (a == null) return b == null;
    if (b == null || a.length != b.length) return false;
    for (var index = 0; index < a.length; index += 1) {
      if (a[index] != b[index]) return false;
    }
    return true;
  }

  final Iterable<EmailAddress> emails;
  final Iterable<EmailAddress> correctEmails;
  try {
    emails = parseEmailAddresses(input);
    correctEmails = parseEmailAddresses(correctInput);
    if (emails.isEmpty) {
      print(
        'Tried running `parseEmailAddresses`, but received an empty list.',
      );
      return;
    }
    if (!_listEquals(emails.toList(), [
      EmailAddress('ali@gmail.com'),
      EmailAddress('bobgmail.com'),
      EmailAddress('cal@gmail.com'),
    ])) {
      print('Looks like `parseEmailAddresses` is wrong. Keep trying!');
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `parseEmailAddresses`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
      'Tried running `parseEmailAddresses`, '
      'but received an exception: $e',
    );
    return;
  }

  try {
    final out = anyInvalidEmailAddress(emails);
    if (!out) {
      print(
        'Looks like `anyInvalidEmailAddress` is wrong. Keep trying! '
        'The result should be false with at least one invalid address.',
      );
      return;
    }
    final falseOut = anyInvalidEmailAddress(correctEmails);
    if (falseOut) {
      print(
        'Looks like `anyInvalidEmailAddress` is wrong. Keep trying! '
        'The result should be false with all valid addresses.',
      );
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `anyInvalidEmailAddress`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
        'Tried running `anyInvalidEmailAddress`, but received an exception: $e');
    return;
  }

  try {
    final valid = validEmailAddresses(emails);
    if (emails.isEmpty) {
      print('Tried running `validEmailAddresses`, but received an empty list.');
      return;
    }
    if (!_listEquals(valid.toList(), [
      EmailAddress('ali@gmail.com'),
      EmailAddress('cal@gmail.com'),
    ])) {
      print('Looks like `validEmailAddresses` is wrong. Keep trying!');
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `validEmailAddresses`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
      'Tried running the `validEmailAddresses`, '
      'but received an exception: $e',
    );
    return;
  }

  print('Success. All tests passed!');
}

bool isValidEmailAddress(EmailAddress email) {
  return email.address.contains('@');
}

//Codelab 4
// Without null safety:
bool isEmpty(String string) => string.length == 0;

main() {
  isEmpty(null);
}

// Using null safety:
makeCoffee(String coffee, [String? dairy]) {
  if (dairy != null) {
    print('$coffee with $dairy');
  } else {
    print('Black $coffee');
  }
}

// Hypothetical unsound null safety:
bad(String? maybeString) {
  print(maybeString.length);
}

main() {
  bad(null);
}

// Hypothetical unsound null safety:
requireStringNotNull(String definitelyString) {
  print(definitelyString.length);
}

main() {
  String? maybeString = null; // Or not!
  requireStringNotNull(maybeString);
}

// Without null safety:
requireStringNotObject(String definitelyString) {
  print(definitelyString.length);
}

main() {
  Object maybeString = 'it is';
  requireStringNotObject(maybeString);
}
// Using null safety:
requireStringNotObject(String definitelyString) {
  print(definitelyString.length);
}

main() {
  Object maybeString = 'it is';
  requireStringNotObject(maybeString as String);
}

// Without null safety:
List<int> filterEvens(List<int> ints) {
  return ints.where((n) => n.isEven);
}

// Without null safety:
String missingReturn() {
  // No return.
}

// Using null safety:
String alwaysReturns(int n) {
  if (n == 0) {
    return 'zero';
  } else if (n < 0) {
    throw ArgumentError('Negative values not allowed.');
  } else {
    if (n > 1000) {
      return 'big';
    } else {
      return n.toString();
    }
  }
}

// Using null safety:
int topLevel = 0;

class SomeClass {
  static int staticField = 0;
}

// Using null safety:
class SomeClass {
  int atDeclaration = 0;
  int initializingFormal;
  int initializationList;

  SomeClass(this.initializingFormal)
      : initializationList = 0;
}

// Using null safety:
int tracingFibonacci(int n) {
  int result;
  if (n < 2) {
    result = n;
  } else {
    result = tracingFibonacci(n - 2) + tracingFibonacci(n - 1);
  }

  print(result);
  return result;
}

// With (or without) null safety:
bool isEmptyList(Object object) {
  if (object is List) {
    return object.isEmpty; // <-- OK!
  } else {
    return false;
  }
}

// Without null safety:
bool isEmptyList(Object object) {
  if (object is! List) return false;
  return object.isEmpty; // <-- Error!
}

// Using null safety:
bool isEmptyList(Object object) {
  if (object is! List) return false;
  return object.isEmpty;
}

// Using null safety:
Never wrongType(String type, Object value) {
  throw ArgumentError('Expected $type, but was ${value.runtimeType}.');
}
// Using null safety:
class Point {
  final double x, y;

  bool operator ==(Object other) {
    if (other is! Point) wrongType('Point', other);
    return x == other.x && y == other.y;
  }

  // Constructor and hashCode...
}

// Using null safety:
int tracingFibonacci(int n) {
  final int result;
  if (n < 2) {
    result = n;
  } else {
    result = tracingFibonacci(n - 2) + tracingFibonacci(n - 1);
  }

  print(result);
  return result;
}

// Using null safety:
String makeCommand(String executable, [List<String>? arguments]) {
  var result = executable;
  if (arguments != null) {
    result += ' ' + arguments.join(' ');
  }
  return result;
}

// Using null safety:
String makeCommand(String executable, [List<String>? arguments]) {
  var result = executable;
  if (arguments == null) return result;
  return result + ' ' + arguments.join(' ');
}

// Using null safety:
String checkList(List<Object> list) {
  if (list?.isEmpty ?? false) {
    return 'Got nothing';
  }
  return 'Got something';
}

// Using null safety:
String checkList(List<Object>? list) {
  if (list == null) return 'No list';
  if (list?.isEmpty ?? false) {
    return 'Empty list';
  }
  return 'Got something';
}

// Without null safety:
String notAString = null;
print(notAString?.length);

// Using null safety:
String? notAString = null;
print(notAString?.length);

// Using null safety:
String? notAString = null;
print(notAString?.length.isEven);

String? notAString = null;
print(notAString?.length?.isEven);

// Using null safety:
showGizmo(Thing? thing) {
  print(thing?.doohickey?.gizmo);
}

// Using null safety:
showGizmo(Thing? thing) {
  print(thing?.doohickey.gizmo);
}

// Using null safety:
showGizmo(Thing? thing) {
  print(thing?.doohickey?.gizmo);
}
// Using null safety:

// Null-aware cascade:
receiver?..method();

// Null-aware index operator:
receiver?[index];

// Allowed with or without null safety:
function?.call(arg1, arg2);

// Using null safety, incorrectly:
class HttpResponse {
  final int code;
  final String? error;

  HttpResponse.ok()
      : code = 200,
        error = null;
  HttpResponse.notFound()
      : code = 404,
        error = 'Not found';

  @override
  String toString() {
    if (code == 200) return 'OK';
    return 'ERROR $code ${error.toUpperCase()}';
  }
}

// Using null safety:
String toString() {
  if (code == 200) return 'OK';
  return 'ERROR $code ${(error as String).toUpperCase()}';
}

// Using null safety:
String toString() {
  if (code == 200) return 'OK';
  return 'ERROR $code ${error!.toUpperCase()}';
}

// Using null safety, incorrectly:
class Coffee {
  String _temperature;

  void heat() { _temperature = 'hot'; }
  void chill() { _temperature = 'iced'; }

  String serve() => _temperature + ' coffee';
}

main() {
  var coffee = Coffee();
  coffee.heat();
  coffee.serve();
}

// Using null safety:
class Coffee {
  String? _temperature;

  void heat() { _temperature = 'hot'; }
  void chill() { _temperature = 'iced'; }

  String serve() => _temperature! + ' coffee';
}

// Using null safety:
class Coffee {
  late String _temperature;

  void heat() { _temperature = 'hot'; }
  void chill() { _temperature = 'iced'; }

  String serve() => _temperature + ' coffee';
}

// Using null safety:
class Weather {
  late int _temperature = _readThermometer();
}

// Using null safety:
class Coffee {
  late final String _temperature;

  void heat() { _temperature = 'hot'; }
  void chill() { _temperature = 'iced'; }

  String serve() => _temperature + ' coffee';
}

// Using null safety:
function({int? a, required int? b, int? c, required int? d}) {}

abstract class Cup {
  Beverage get contents;
  set contents(Beverage);
}

// Using null safety, incorrectly:
class Coffee {
  String? _temperature;

  void heat() { _temperature = 'hot'; }
  void chill() { _temperature = 'iced'; }

  void checkTemp() {
    if (_temperature != null) {
      print('Ready to serve ' + _temperature + '!');
    }
  }

  String serve() => _temperature! + ' coffee';
}

// Using null safety:
void checkTemp() {
  var temperature = _temperature;
  if (temperature != null) {
    print('Ready to serve ' + temperature + '!');
  }
}

// Using null safety:
class Box<T> {
  final T object;
  Box(this.object);
}

main() {
  Box<String>('a string');
  Box<int?>(null);
}
// Using null safety:
class Box<T> {
  T? object;
  Box.empty();
  Box.full(this.object);
}

// Using null safety:
class Box<T> {
  T? object;
  Box.empty();
  Box.full(this.object);

  T unbox() => object as T;
}

// Using null safety:
main() {
  var box = Box<int?>.full(null);
  print(box.unbox());
}

// Using null safety:
class Interval<T extends num> {
  T min, max;

  Interval(this.min, this.max);

  bool get isEmpty => max <= min;
}

// Using null safety:
class Interval<T extends num?> {
  T min, max;

  Interval(this.min, this.max);

  bool get isEmpty {
    var localMin = min;
    var localMax = max;

    // No min or max means an open-ended interval.
    if (localMin == null || localMax == null) return false;
    return localMax <= localMin;
  }
}
 // Using null safety:
var map = {'key': 'value'};
print(map['key']!.length); // OK.

//Codelab 5
// This example shows how *not* to write asynchronous Dart code.

String createOrderMessage() {
  var order = fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() =>
    // Imagine that this function is more complex and slow.
    Future.delayed(
      const Duration(seconds: 2),
      () => 'Large Latte',
    );

void main() {
  print(createOrderMessage());
}

Future<void> fetchUserOrder() {
  // Imagine that this function is fetching user info from another service or database.
  return Future.delayed(const Duration(seconds: 2), () => print('Large Latte'));
}

void main() {
  fetchUserOrder();
  print('Fetching user order...');
}

String createOrderMessage() {
  var order = fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() =>
    // Imagine that this function is
    // more complex and slow.
    Future.delayed(
      const Duration(seconds: 2),
      () => 'Large Latte',
    );

void main() {
  print('Fetching user order...');
  print(createOrderMessage());
}


Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() =>
    // Imagine that this function is
    // more complex and slow.
    Future.delayed(
      const Duration(seconds: 2),
      () => 'Large Latte',
    );

Future<void> main() async {
  print('Fetching user order...');
  print(await createOrderMessage());
}


Future<void> printOrderMessage() async {
  print('Awaiting user order...');
  var order = await fetchUserOrder();
  print('Your order is: $order');
}

Future<String> fetchUserOrder() {
  // Imagine that this function is more complex and slow.
  return Future.delayed(const Duration(seconds: 4), () => 'Large Latte');
}

void main() async {
  countSeconds(4);
  await printOrderMessage();
}

// You can ignore this function - it's here to visualize delay time in this example.
void countSeconds(int s) {
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}
try {
  print('Awaiting user order...');
  var order = await fetchUserOrder();
} catch (err) {
  print('Caught error: $err');
}

Future<void> printOrderMessage() async {
  try {
    print('Awaiting user order...');
    var order = await fetchUserOrder();
    print(order);
  } catch (err) {
    print('Caught error: $err');
  }
}

Future<String> fetchUserOrder() {
  // Imagine that this function is more complex.
  var str = Future.delayed(
      const Duration(seconds: 4),
      () => throw 'Cannot locate user order');
  return str;
}

void main() async {
  await printOrderMessage();
}
// Part 1
addHello(String user) {}

// Part 2
// Call the provided async function fetchUsername()
// to return the username.
greetUser() {}

// Part 3
// Call the provided async function logoutUser()
// to log out the user.
sayGoodbye() {}

// The following functions are provided to you to use in your solutions.

Future<String> fetchUsername() => Future.delayed(_halfSecond, () => 'Jean');

Future<String> logoutUser() => Future.delayed(_halfSecond, _failOnce);

// The following code is used to test and provide feedback on your solution.
// There is no need to read or modify it.

void main() async {
  const didNotImplement =
      'Test failed! Did you forget to implement or return from';

  final List<String> messages = [];

  print('Testing...');
  try {
    messages
      ..add(_makeReadable(
          testLabel: 'Part 1',
          testResult: await _asyncEquals(
              expected: 'Hello Jerry',
              actual: addHello('Jerry'),
              typoKeyword: 'Jerry'),
          readableErrors: {
            _typoMessage: _typoMessage,
            'null': '$didNotImplement addHello?',
            'Hello Instance of \'Future<String>\'':
                'Looks like you forgot to use the \'await\' keyword!',
            'Hello Instance of \'_Future<String>\'':
                'Looks like you forgot to use the \'await\' keyword!',
          }))
      ..add(_makeReadable(
          testLabel: 'Part 2',
          testResult: await _asyncEquals(
              expected: 'Hello Jean',
              actual: await greetUser(),
              typoKeyword: 'Jean'),
          readableErrors: {
            _typoMessage: _typoMessage,
            'null': '$didNotImplement greetUser?',
            'HelloJean':
                'Looks like you forgot the space between \'Hello\' and \'Jean\'',
            'Hello Instance of \'Future<String>\'':
                'Looks like you forgot to use the \'await\' keyword!',
            'Hello Instance of \'_Future<String>\'':
                'Looks like you forgot to use the \'await\' keyword!',
            '{Closure: (String) => dynamic from Function \'addHello\': static.(await fetchUsername())}':
                'Did you place the \'\$\' character correctly?',
            '{Closure \'addHello\'(await fetchUsername())}':
                'Did you place the \'\$\' character correctly?',
          }))
      ..add(_makeReadable(
          testLabel: 'Part 3',
          testResult: await _asyncDidCatchException(sayGoodbye),
          readableErrors: {
            _typoMessage:
                '$_typoMessage. Did you add the text \'Thanks, see you next time\'?',
            'null': '$didNotImplement sayGoodbye?',
            _noCatch:
                'Did you remember to call logoutUser within a try/catch block?',
            'Instance of \'Future<String>\' Thanks, see you next time':
                'Did you remember to use the \'await\' keyword in the sayGoodbye function?',
            'Instance of \'_Future<String>\' Thanks, see you next time':
                'Did you remember to use the \'await\' keyword in the sayGoodbye function?',
          }))
      ..add(_makeReadable(
          testLabel: 'Part 3',
          testResult: await _asyncEquals(
              expected: 'Success! Thanks, see you next time',
              actual: await sayGoodbye(),
              typoKeyword: 'Success'),
          readableErrors: {
            _typoMessage:
                '$_typoMessage. Did you add the text \'Thanks, see you next time\'?',
            'null': '$didNotImplement sayGoodbye?',
            _noCatch:
                'Did you remember to call logoutUser within a try/catch block?',
            'Instance of \'Future<String>\' Thanks, see you next time':
                'Did you remember to use the \'await\' keyword in the sayGoodbye function?',
            'Instance of \'_Future<String>\' Thanks, see you next time':
                'Did you remember to use the \'await\' keyword in the sayGoodbye function?',
            'Instance of \'_Exception\'':
                'CAUGHT Did you remember to return a string?',
          }))
      ..removeWhere((m) => m.contains(_passed))
      ..toList();

    if (messages.isEmpty) {
      print('Success. All tests passed!');
    } else {
      messages.forEach(print);
    }
  } catch (e) {
    print('Tried to run solution, but received an exception: $e');
  }
}

// Test helpers.
String _makeReadable({
  required String testResult,
  required Map<String, String> readableErrors,
  required String testLabel,
}) {
  String? readable;
  if (readableErrors.containsKey(testResult)) {
    readable = readableErrors[testResult];
    return '$testLabel $readable';
  } else if ((testResult != _passed) && (testResult.length < 18)) {
    readable = _typoMessage;
    return '$testLabel $readable';
  } else {
    return '$testLabel $testResult';
  }
}

Future<String> _asyncEquals({
  required String expected,
  required dynamic actual,
  required String typoKeyword,
}) async {
  final strActual = actual is String ? actual : actual.toString();
  try {
    if (expected == actual) {
      return _passed;
    } else if (strActual.contains(typoKeyword)) {
      return _typoMessage;
    } else {
      return strActual;
    }
  } catch (e) {
    return e.toString();
  }
}

Future<String> _asyncDidCatchException(Function fn) async {
  var caught = true;
  try {
    await fn();
  } on Exception catch (_) {
    caught = false;
  }

  if (caught == true) {
    return _passed;
  } else {
    return _noCatch;
  }
}

const _typoMessage = 'Test failed! Check for typos in your return value';
const _passed = 'PASSED';
const _noCatch = 'NO_CATCH';
const _halfSecond = Duration(milliseconds: 500);

String _failOnce() {
  if (_logoutSucceeds) {
    return 'Success!';
  } else {
    _logoutSucceeds = true;
    throw Exception('Logout failed');
  }
}

bool _logoutSucceeds = false;

