class Client {
  final String id;
  final String name;

  Client({
    required this.id,
    required this.name,
  });

  Client.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}
