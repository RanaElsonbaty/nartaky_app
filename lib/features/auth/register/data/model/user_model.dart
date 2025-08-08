class UserModel {
  final int id;
  final String name;
  final String email;
  final String phone;
  final List<dynamic> country;
  final String image;
  final int advNumbers;
  final int auctionsNumbers;
  final int status;
  final int internationalAds;
  final int unreadMessages;
  final String token;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.country,
    required this.image,
    required this.advNumbers,
    required this.auctionsNumbers,
    required this.status,
    required this.internationalAds,
    required this.unreadMessages,
    required this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      phone: json['phone'] ?? '',
      country: json['country'] ?? [],
      image: json['image'] ?? '',
      advNumbers: json['adv_numbers'] ?? 0,
      auctionsNumbers: json['auctions_numbers'] ?? 0,
      status: json['status'] is int ? json['status'] : (json['status'] == true ? 1 : 0),
      internationalAds: json['internationalAds'] ?? 0,
      unreadMessages: json['unread_messages'] ?? 0,
      token: json['api_token'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'country': country,
      'image': image,
      'adv_numbers': advNumbers,
      'auctions_numbers': auctionsNumbers,
      'status': status,
      'internationalAds': internationalAds,
      'unread_messages': unreadMessages,
      'api_token': token,
    };
  }
}
