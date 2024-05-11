import 'dart:io';

void main() {
  //String  = "1";
  String n1 = "1";
  String n2 = "2";
  String n3 = "3";
  String n4 = "4";
  String n5 = "5";
  String n6 = "6";

  print("---------------Mini Mart-------------");
  print("------Enter user Name-Password---------");
  login();
  print(" Fruits :  Meat:    Vegetables:   juices:   Add To Cart ");
  print(" Click 1 :  Click 2:  Click 3:  Click 4:    Click 5");

  int numAttempt = 5;
  int i = 0;

  while (i < numAttempt) {
    String user = (stdin.readLineSync()!);

    if (user == n1) {
      print("------------Fruits------------");
      fruits();
    }
    if (user == n2) {
      print("------------Meat----------------");
      meat();
    }
    if (user == n3) {
      print("-----------Vegetables List-----------");
      vegetables();
    }
    if (user == n4) {
      print("-----------Juices List-----------");
      juices();
    }
    if (user == n5) {
      cart();
    }
    if (user == n6) {
      break;
    }
  }
}

// fruits() {
//   int numAttempt = 5;
//   int i = 0;
//   String click1 = "1";
//   String click2 = "2";
//   String click3 = "3";
//   List fruit = ["Apple", "Banana", "Mango", "Grapes"];

//   print(fruit);
//   while (i < numAttempt) {
//     String f_user = (stdin.readLineSync()!);

//     if (f_user == click1) {
//       print("Write The Name Of New Fruit Item");
//       String f_add = (stdin.readLineSync()!);
//       fruit.add(f_add);
//       print(fruit);
//     }
//     if (f_user == click2) {
//       print("Delete Fruit Itme ");
//       print(" Click 0 :  Click 1:  Click 2:   Click 3:");
//       int f_remove = int.parse(stdin.readLineSync()!);
//       fruit.removeAt(f_remove);
//       print(fruit);
//     }
//     if (f_user == click3) ;
//     break;
//   }

fruits() {
  List fruit = ["Apple", "Banana", "Mango", "Grapes"];

  print(fruit);

  ////insert value
  print("Add New Fruit Item");
  String f_add = (stdin.readLineSync()!);
  fruit.add(f_add);
  print(fruit);
  print("Delete Fruit Itme ");
  print(" Click 0 :  Click 1:  Click 2:   Click 3:");
  int f_remove = int.parse(stdin.readLineSync()!);
  fruit.removeAt(f_remove);
  print(fruit);
  // print("Click Add To Cart");
  // print(" Click 1 :  Click 2:  Click 3:   Click 4:");
  // int f_list = int.parse(stdin.readLineSync()!);

  // // print("Add to cart show");
  // int cart1 = 1 + 1;
  // print("${fruit[f_list]} Rs:200 : Add to cart ${cart1}");
}

meat() {
  List meaT = ["Beef", "Chicken", "Fish", "Mutton"];
  print(meaT);
}

vegetables() {
  List vege = ["Potato", "Tomato", "Onion", "Coriander", "Mint"];
  print(vege);
  print("click 1 --- click 2 --- click 3 --- click 4 --- click 5");
}

juices() {
  List juice = [
    "Apple Juice",
    "Mango Juice",
    "Pineapple Juice",
    "Papaya Juice",
    "Grapes Juice"
  ];
  print(juice);
  print("click 1 --- click 2 --- click 3 --- click 4 --- click 5");
}

cart() {
  print("cart");
  print("Mango Rs:200 : 1kg Add to cart ");
  print("Tomoto Rs:100 : 1kg Add to cart ");
  print("Mango juices Rs:100 : Add to cart ");
}

login() {
  String userName = "aisha";
  String userPassword = "123";
  int numAttempt = 5;
  int i = 0;
  while (i < numAttempt) {
    stdout.write("enter your name:---");
    var user_name = stdin.readLineSync();
    stdout.write("enter your password:---");
    var user_pasword = stdin.readLineSync();
    if (user_name == userName && user_pasword == userPassword) {
      print("login");
      break;
    } else {
      print("retry");
    }
    if (i == 4) {
      print("account is locked");
    }
    i++;
  }
}
