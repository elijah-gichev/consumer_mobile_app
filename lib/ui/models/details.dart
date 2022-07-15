class Details {
  final String city;
  final double costFrom;
  final double costTo;
  final Plan plan;
  final double ceilingHeight;
  final bool isRenovated;
  final int floorMin;
  final int floorMax;
  final View windowView;
  final HouseType houseType;

  Details({
    required this.city,
    required this.costFrom,
    required this.costTo,
    required this.plan,
    required this.ceilingHeight,
    required this.isRenovated,
    required this.floorMin,
    required this.floorMax,
    required this.windowView,
    required this.houseType,
  });
}

enum Plan {
  studio,
  oneRoomed,
  twoRoomed,
  threeRoomed,
  fourRoomed,
  penthouse,
}

enum View {
  outside,
  window,
}

enum HouseType {
  brick,
  monolithic,
  block,
}

enum Parking {
  ground,
  underground,
  //parallel :3
}
