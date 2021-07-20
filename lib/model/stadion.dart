class Stadion {
  String name;
  String imageUrl;
  String country;
  String size;
  String rating;
  String discount;
  String price;
  String location;
  List<Feature> features;
  List<Facility> facilities;
  Stadion({
    required this.name,
    required this.imageUrl,
    required this.country,
    required this.size,
    required this.rating,
    required this.discount,
    required this.price,
    required this.location,
    required this.features,
    required this.facilities,
  });
}

class Feature {
  String feature;
  Feature({required this.feature});
}

class Facility {
  String iconUrl;
  String facility;
  Facility({
    required this.iconUrl,
    required this.facility,
  });
}

List<Stadion> stadions = [
  Stadion(
    name: 'Roome Football Stadium',
    imageUrl:
        'https://images.unsplash.com/photo-1588431558645-316675e000de?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80',
    country: 'Istanbul, Turkey',
    size: '1.4 km',
    rating: '4.9',
    discount: '10% Discount area',
    price: '\$165',
    location: '2751 Ash Dr. San Jose, South Dakota 83475',
    features: [
      Feature(feature: 'Hiring Partner'),
      Feature(feature: 'Grass Pitch or Astrotuff'),
      Feature(feature: 'Artificial Grass Pitch'),
      Feature(feature: 'Capacity (14)'),
      Feature(feature: 'Indoor/Outdoor'),
      Feature(feature: 'Miniature Field'),
    ],
    facilities: [
      Facility(iconUrl: 'assets/car.svg', facility: 'Parking Spot'),
      Facility(iconUrl: 'assets/hanger.svg', facility: 'Changing Rooms'),
      Facility(iconUrl: 'assets/cctv.svg', facility: 'Camera'),
      Facility(iconUrl: 'assets/bench.svg', facility: 'Waiting Area'),
    ],
  ),
  Stadion(
    name: 'Maguwoharjo Football Stadium',
    imageUrl:
        'https://images.unsplash.com/photo-1600130202712-fd01014ffa79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80',
    country: 'Sleman, Indonesia',
    size: '1.0 km',
    rating: '4.0',
    discount: '20% Discount area',
    price: '\$100',
    location: 'Sleman, Central Java, Indonesia',
    features: [
      Feature(feature: 'Hiring Partner'),
      Feature(feature: 'Grass Pitch or Astrotuff'),
      Feature(feature: 'Artificial Grass Pitch'),
      Feature(feature: 'Capacity (14)'),
      Feature(feature: 'Indoor/Outdoor'),
      Feature(feature: 'Miniature Field'),
    ],
    facilities: [
      Facility(iconUrl: 'assets/car.svg', facility: 'Parking Spot'),
      Facility(iconUrl: 'assets/hanger.svg', facility: 'Changing Rooms'),
      Facility(iconUrl: 'assets/cctv.svg', facility: 'Camera'),
      Facility(iconUrl: 'assets/bench.svg', facility: 'Waiting Area'),
    ],
  ),
];
