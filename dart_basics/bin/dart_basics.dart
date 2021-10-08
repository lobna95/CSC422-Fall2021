/////// Non-nullable types
// void main(List<String> arguments) {
//   int? a;
//   a = null;
//   print('a is $a.');
// }

////// Nullable type parameters for generics
// void main() {
//   List<String> aListOfStrings = ['one', 'two', 'three'];
//   List<String?>? aNullableListOfStrings = [null];
//   List<String?> aListOfNullableStrings = ['one', null, 'three', null];

//   print('aListOfStrings is $aListOfStrings.');
//   print('aNullableListOfStrings is $aNullableListOfStrings.');
//   print('aListOfNullableStrings is $aListOfNullableStrings.');
// }

////// Null assertion
// int? couldReturnNullButDoesnt() => -3;

// void main() {
//   int? couldBeNullButIsnt = 1;
//   List<int?> listThatCouldHoldNulls = [2, null, 4];

//   int a = couldBeNullButIsnt;
//   int b = listThatCouldHoldNulls.first!; // first item in the list
//   int c = couldReturnNullButDoesnt()!.abs(); // absolute value

//   print('a is $a.');
//   print('b is $b.');
//   print('c is $c.');
// }

////// Type promotion
// void main() {
//   String text;

//   if (DateTime.now().hour < 12) {
//     text = "It's morning! Let's make aloo paratha!";
//   } else {
//     text = "It's afternoon! Let's make biryani!";
//   }

//   print(text);
//   print(text.length);

//   var x;
//   x = "lobna";
//   x = 5;
// }

////// Functions

// void main() {
//   ///Functions are Objects
//   // List<int> numberList = [];
//   // numberList.add(73);
//   // numberList.add(64);
//   // numberList.add(21);

//   // numberList.forEach((element) {
//   //   print(element);
//   // });

//   var area = findArea_Return(5, 2);
//   print(area);
//   var area2 = findArea_NoReturn(2, 2);
//   print(area2);

//   printArea(3, 2);
// }

// int findArea_Return(int length, int breadth) {
//   return length * breadth;
// }

// //How to convert this function to Function as expression?
// void printArea(int length, int breadth) =>
//     print("The area is ${length * breadth}");

// // "=>" is known as FAT ARROW

// // findArea_NoReturn(int length, int breadth) {
// //   return length * breadth;
// // }

// findArea_NoReturn(int length, int breadth) {}

// 1. Required Parameters
// 2. Optional Positional Parameters
void main() {
  // var x;
  // print(x);
//   printCities("New York", "New Delhi", "Sydney");
// //   // You can skip the Optional Positional Parameters
//   // printCities("name1, name2, name3");
//   printCountriesPositional("USA");
//   printCountriesPositional("USA", "UK");
  // printCountriesNamed("USA");
  // print(findVolume(5, 2));
//   print(findVolume(5, breadth: 2));
// }

// // // Required Parameters
// void printCities(String name1, String name2, String name3) {
//   print("Name 1 is $name1");
//   print("Name 2 is $name2");
//   print("Name 3 is $name3");
// }

// // Required Parameters & Optional Positional Parameter
// void printCountriesPositional(String name1, [String? name2, name3]) {
//   print("Name 1 is $name1");
//   print("Name 2 is $name2");
//   print("Name 3 is $name3");
// }

// Required Parameters & Optional Named Parameter
  void printCountriesNamed(String name1, {required name2, name3}) {
    print("Name 1 is $name1");
    print("Name 2 is $name2");
    print("Name 3 is $name3");
  }

  printCountriesNamed("USA", name2: "UK", name3: "Cairo");
}

// // Required Parameters & Optional Default Parameter
int findVolume(length, {required breadth, int height = 10}) {
  return (length * breadth * height);
}

///// Factory Constructor
// void main(){
//   var logger = Logger('UI');
// logger.log('Button clicked');

// var logMap = {'name': 'UI'};
// var loggerJson = Logger.fromJson(logMap);
// }

// class Logger {
//   final String name;
//   bool mute = false;

//   // _cache is library-private, thanks to
//   // the _ in front of its name.
//   static final Map<String, Logger> _cache =
//       <String, Logger>{};

//   factory Logger(String name) {
//     return _cache.putIfAbsent(
//         name, () => Logger._internal(name));
//   }

//   factory Logger.fromJson(Map<String, Object> json) {
//     return Logger(json['name'].toString());
//   }

//   Logger._internal(this.name);

//   void log(String msg) {
//     if (!mute) print(msg);
//   }
// }

// void main() {
//   var student1 =
//       Student("Mohamed"); // One Object, student1 is reference variable
//   print("${student1.id} and ${student1.name}");

//   student1.study();
//   student1.sleep();

//   Student student2 = Student.myCustomConstructor();
//   student2.sleep();
// }

// class Student {
//   int id = -1; // Instance or Field Variable, default value is -1
//   String name = ""; // Instance or Field Variable, default value is Ahmed
//   Student(this.name) {
//     print("This is a Default Constructor");
//   }
//   Student.myCustomConstructor() {
//     print("This is a Custom Constructor");
//   }
//   Student.anotherOne() {}
//   void study() {
//     print("${this.name} is now studying");
//   }

//   void sleep() {
//     print("${this.name} is now sleeping");
//   }
// }
