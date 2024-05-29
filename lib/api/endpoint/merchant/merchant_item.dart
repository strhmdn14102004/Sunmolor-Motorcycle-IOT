class MerchantItem {
  int id;
  String name;
  String phoneNumber;
  String address;
  String imageUrl;
  int tableId;
  String tableName;

  MerchantItem({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.address,
    required this.imageUrl,
    required this.tableId,
    required this.tableName,
  });

  factory MerchantItem.fromJson(Map<String, dynamic> json) => MerchantItem(
        id: json["id"],
        name: json["name"],
        phoneNumber: json["phoneNumber"],
        address: json["address"],
        imageUrl: json["imageUrl"],
        tableId: json["tableId"],
        tableName: json["tableName"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phoneNumber": phoneNumber,
        "address": address,
        "imageUrl": imageUrl,
        "tableId": tableId,
        "tableName": tableName,
      };
}
