class Product {
  final String _name;
  final String _description;
  final String _currency;
  final double _price;
  final String _imageUrl;

  Product(
      {required final String name,
      required final String description,
      required final String currency,
      required final double price,
      required final String imageUrl})
      : _name = name,
        _description = description,
        _currency = currency,
        _price = price,
        _imageUrl = imageUrl;

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
