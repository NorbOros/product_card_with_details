class Product {
  final String _id;
  final String _name;
  final String _description;
  final String _details;
  final double _price;
  final String _currency;
  final String _imageUrl;

  Product(
      {required final String id,
      required final String name,
      required final String description,
      required final String details,
      required final double price,
      required final String currency,
      required final String imageUrl})
      : _id = id,
        _name = name,
        _description = description,
        _details = details,
        _price = price,
        _currency = currency,
        _imageUrl = imageUrl;

  String get id => _id;

  String get name => _name;

  String get description => _description;

  String get details => _details;

  double get price => _price;

  String get imageUrl => _imageUrl;

  String get currency => _currency;
}
