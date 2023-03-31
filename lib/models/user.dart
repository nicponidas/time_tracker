class User {
  final String id;
  final String fName;
  final String lName;
  final String email;

  User({
    required this.id,
    required this.fName,
    required this.lName,
    required this.email,
  });

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        fName = json['fName'],
        lName = json['lName'],
        email = json['email'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'fName': fName,
        'lName': lName,
        'email': email,
      };
}
