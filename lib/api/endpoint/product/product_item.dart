class ProductItem {
  List<Category> categories;

  ProductItem({
    required this.categories,
  });

  factory ProductItem.fromJson(Map<String, dynamic> json) => ProductItem(
        categories: List<Category>.from(
            json["categories"].map((x) => Category.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
      };
}

class Category {
  int id;
  String name;
  List<Item> items;

  Category({
    required this.id,
    required this.name,
    required this.items,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

class Item {
  int id;
  String name;
  String? description;
  int price;
  String uom;
  String imageUrl;
  List<ModifierGroup> modifierGroups;

  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.uom,
    required this.imageUrl,
    required this.modifierGroups,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        uom: json["uom"],
        imageUrl: json["imageUrl"],
        modifierGroups: List<ModifierGroup>.from(
            json["modifierGroups"].map((x) => ModifierGroup.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "uom": uom,
        "imageUrl": imageUrl,
        "modifierGroups":
            List<dynamic>.from(modifierGroups.map((x) => x.toJson())),
      };
}

class ModifierGroup {
  int id;
  String name;
  int minSelection;
  int maxSelection;
  List<Modifier> modifiers;

  ModifierGroup({
    required this.id,
    required this.name,
    required this.minSelection,
    required this.maxSelection,
    required this.modifiers,
  });

  factory ModifierGroup.fromJson(Map<String, dynamic> json) => ModifierGroup(
        id: json["id"],
        name: json["name"],
        minSelection: json["minSelection"],
        maxSelection: json["maxSelection"],
        modifiers: List<Modifier>.from(
            json["modifiers"].map((x) => Modifier.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "minSelection": minSelection,
        "maxSelection": maxSelection,
        "modifiers": List<dynamic>.from(modifiers.map((x) => x.toJson())),
      };
}

class Modifier {
  int id;
  String name;
  int price;

  Modifier({
    required this.id,
    required this.name,
    required this.price,
  });

  factory Modifier.fromJson(Map<String, dynamic> json) => Modifier(
        id: json["id"],
        name: json["name"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
      };
}
