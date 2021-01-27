class ShopDetails {
  int id;
  String cityname;
  String location;
  String shopname;
  String dishes;
  String favdish;
  int rating;
  bool visited;

  ShopDetails({
    this.id,
    this.cityname,
    this.location,
    this.shopname,
    this.dishes,
    this.favdish,
    this.rating,
    this.visited,
  });

  factory ShopDetails.fromJson(Map<String, dynamic> json) {
    return ShopDetails(
      id: json['id'],
      cityname: json['city_name'],
      location: json['location'],
      shopname: json['shop_name'],
      dishes: json['dishes'],
      favdish: json['fav_dish'],
      rating: json['rating'],
      visited: json['visited'],
    );
  }
}
