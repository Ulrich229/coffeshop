import 'dart:convert';

class Coffee {
  int id;
  String extra;
  String imagePath;
  double price;
  double rate;
  Coffee({
    required this.id,
    required this.extra,
    required this.imagePath,
    required this.price,
    required this.rate,
  });

  Coffee copyWith({
    int? id,
    String? extra,
    String? imagePath,
    double? price,
    double? rate,
  }) {
    return Coffee(
      id: id ?? this.id,
      extra: extra ?? this.extra,
      imagePath: imagePath ?? this.imagePath,
      price: price ?? this.price,
      rate: rate ?? this.rate,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'extra': extra,
      'imagePath': imagePath,
      'price': price,
      'rate': rate,
    };
  }

  factory Coffee.fromMap(Map<String, dynamic> map) {
    return Coffee(
      id: map['id'] as int,
      extra: map['extra'] as String,
      imagePath: map['imagePath'] as String,
      price: map['price'] as double,
      rate: map['rate'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Coffee.fromJson(String source) =>
      Coffee.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Coffee(id: $id, extra: $extra, imagePath: $imagePath, price: $price, rate: $rate)';
  }

  @override
  bool operator ==(covariant Coffee other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.extra == extra &&
        other.imagePath == imagePath &&
        other.price == price &&
        other.rate == rate;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        extra.hashCode ^
        imagePath.hashCode ^
        price.hashCode ^
        rate.hashCode;
  }
}

final List<Coffee> coffees = [
  Coffee(
    id: 1,
    extra: "Chocolate",
    imagePath: "assets/images/coffee_2.png",
    price: 4.53,
    rate: 4.8,
  ),
  Coffee(
    id: 1,
    extra: "Oat Milk",
    imagePath: "assets/images/coffee_1.png",
    price: 3.90,
    rate: 4.9,
  ),
  Coffee(
    id: 1,
    extra: "Chocolate",
    imagePath: "assets/images/coffee_3.png",
    price: 4.22,
    rate: 4.5,
  ),
  Coffee(
    id: 1,
    extra: "Chocolate",
    imagePath: "assets/images/coffe_4.png",
    price: 3.43,
    rate: 4.0,
  ),
];
