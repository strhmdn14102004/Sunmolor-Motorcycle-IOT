class KeranjangItem {
  double id;
  String deviceId;
  Merchant merchant;
  Table table;
  double total; // Change the type to double
  dynamic note;
  dynamic date;
  dynamic paymentMethod;
  List<Detail> details;
  List<Amount> amounts;

  KeranjangItem({
    required this.id,
    required this.deviceId,
    required this.merchant,
    required this.table,
    required this.total,
    required this.note,
    required this.date,
    required this.paymentMethod,
    required this.details,
    required this.amounts,
  });

  factory KeranjangItem.fromJson(Map<String, dynamic> json) => KeranjangItem(
        id: json["id"]?.toDouble(),
        deviceId: json["deviceId"],
        merchant: Merchant.fromJson(json["merchant"]),
        table: Table.fromJson(json["table"]),
        total: json["total"], // Change to double
        note: json["note"],
        date: json["date"],
        paymentMethod: json["paymentMethod"],
        details:
            List<Detail>.from(json["details"].map((x) => Detail.fromJson(x))),
        amounts:
            List<Amount>.from(json["amounts"].map((x) => Amount.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "deviceId": deviceId,
        "merchant": merchant.toJson(),
        "table": table.toJson(),
        "total": total,
        "note": note,
        "date": date,
        "paymentMethod": paymentMethod,
        "details": List<dynamic>.from(details.map((x) => x.toJson())),
        "amounts": List<dynamic>.from(amounts.map((x) => x.toJson())),
      };
}


class Amount {
  String name;
  double value; // Ubah tipe data menjadi double

  Amount({
    required this.name,
    required this.value,
  });

  factory Amount.fromJson(Map<String, dynamic> json) => Amount(
        name: json["name"],
        value: json["value"].toDouble(), // Konversi ke double
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "value": value,
      };
}


class Detail {
  double id;
  int quantity;
  String note;
  int categoryId;
  String categoryName;
  int itemId;
  String name;
  dynamic description;
  int price;
  int amount;
  String uom;
  String imageUrl;
  List<Modifier> modifiers;

  Detail({
    required this.id,
    required this.quantity,
    required this.note,
    required this.categoryId,
    required this.categoryName,
    required this.itemId,
    required this.name,
    required this.description,
    required this.price,
    required this.amount,
    required this.uom,
    required this.imageUrl,
    required this.modifiers,
  });

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
        id: json["id"]?.toDouble(),
        quantity: json["quantity"],
        note: json["note"],
        categoryId: json["categoryId"],
        categoryName: json["categoryName"],
        itemId: json["itemId"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        amount: json["amount"],
        uom: json["uom"],
        imageUrl: json["imageUrl"],
        modifiers: List<Modifier>.from(
            json["modifiers"].map((x) => Modifier.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "quantity": quantity,
        "note": note,
        "categoryId": categoryId,
        "categoryName": categoryName,
        "itemId": itemId,
        "name": name,
        "description": description,
        "price": price,
        "amount": amount,
        "uom": uom,
        "imageUrl": imageUrl,
        "modifiers": List<dynamic>.from(modifiers.map((x) => x.toJson())),
      };
}

class Modifier {
  int groupId;
  String groupName;
  int id;
  String name;
  int price;

  Modifier({
    required this.groupId,
    required this.groupName,
    required this.id,
    required this.name,
    required this.price,
  });

  factory Modifier.fromJson(Map<String, dynamic> json) => Modifier(
        groupId: json["groupId"],
        groupName: json["groupName"],
        id: json["id"],
        name: json["name"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "groupId": groupId,
        "groupName": groupName,
        "id": id,
        "name": name,
        "price": price,
      };
}

class Merchant {
  int id;
  String name;
  String phoneNumber;
  String address;
  String imageUrl;

  Merchant({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.address,
    required this.imageUrl,
  });

  factory Merchant.fromJson(Map<String, dynamic> json) => Merchant(
        id: json["id"],
        name: json["name"],
        phoneNumber: json["phoneNumber"],
        address: json["address"],
        imageUrl: json["imageUrl"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phoneNumber": phoneNumber,
        "address": address,
        "imageUrl": imageUrl,
      };
}

class Table {
  int id;
  String name;

  Table({
    required this.id,
    required this.name,
  });

  factory Table.fromJson(Map<String, dynamic> json) => Table(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}