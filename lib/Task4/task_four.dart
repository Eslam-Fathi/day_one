abstract class Serializable {
  Map<String, dynamic> toJson();
}

class User implements Serializable {
  String name;
  int age;
  String email;

  User(
    this.name,
    this.age,
    this.email,
  );

  @override
  Map<String, dynamic> toJson() => {
        "name": name,
        "age": age,
        "email": email,
      };
}

class Product implements Serializable {
  String productName;
  double price;
  int quantity;

  Product(
    this.productName,
    this.price,
    this.quantity,
  );

  @override
  Map<String, dynamic> toJson() => {
        "productName": productName,
        "price": price,
        "quantity": quantity,
      };
}
