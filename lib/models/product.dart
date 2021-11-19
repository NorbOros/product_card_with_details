class Product {
  final String _name;
  final String _description;
  final double _price;
  final String _imageUrl;

  Product(
      {required final String name,
      required final String description,
      required final double price,
      required final String imageUrl})
      : _name = name,
        _description = description,
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
}
