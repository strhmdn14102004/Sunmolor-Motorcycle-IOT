

class CartProdukitem {
    final String itemId;
    final int quantity;
    final String note;
   final  List<Detail> details;

    CartProdukitem({
        required this.itemId,
        required this.quantity,
        required this.note,
        required this.details,
    });

    factory CartProdukitem.fromJson(Map<String, dynamic> json) {
  return CartProdukitem(
    itemId: json["itemId"],
    quantity: json["quantity"] ?? 0, // Memberikan nilai default 0 jika quantity null
    note: json["note"],
    details: List<Detail>.from(json["details"].map((x) => Detail.fromJson(x))),
  );
}

    Map<String, dynamic> toJson() => {
        "itemId": itemId,
        "quantity": quantity,
        "note": note,
        "details": List<dynamic>.from(details.map((x) => x.toJson())),
    };
}

class Detail {
    int modifierGroupId;
    List<int> modifierIds;

    Detail({
        required this.modifierGroupId,
        required this.modifierIds,
    });

factory Detail.fromJson(Map<String, dynamic> json) {
  return Detail(
    modifierGroupId: json["modifierGroupId"] ?? 0, // Provide a default value for modifierGroupId
    modifierIds: json["modifierIds"] != null
        ? List<int>.from(json["modifierIds"].map<int>((x) => x as int))
        : [], // Provide an empty list as the default value
  );
}



    Map<String, dynamic> toJson() => {
        "modifierGroupId": modifierGroupId,
        "modifierIds": List<dynamic>.from(modifierIds.map((x) => x)),
    };
}
