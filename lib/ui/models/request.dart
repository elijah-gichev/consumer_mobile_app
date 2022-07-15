class Request {
  final String action;
  final String object;
  final String location;
  final String minPrice;
  final String maxPrice;

  Request({
    required this.location,
    required this.action,
    required this.object,
    required this.minPrice,
    required this.maxPrice,
  });

  factory Request.blank() {
    return Request(
      location: 'пос. Янтарный, пос. Камышеваха',
      minPrice: '15 млн',
      maxPrice: '25 млн',
      action: 'Купить',
      object: 'дом',
    );
  }
}
