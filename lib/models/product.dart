class Product {
  final String _id;
  final String _name;
  final String _description;
  final double _price;
  final String _currency;
  final String _imageUrl;

  Product(
      {required final String id,
      required final String name,
      required final String description,
      required final double price,
      required final String currency,
      required final String imageUrl})
      : _id = id,
        _name = name,
        _description = description,
        _price = price,
        _currency = currency,
        _imageUrl = imageUrl;

  String get id {
    return _id;
  }

  String get name {
    return _name;
  }

  String get description {
    return _description;
  }

  double get price {
    return _price;
  }

  String get imageUrl {
    return _imageUrl;
  }

  String get currency {
    return _currency;
  }
}
