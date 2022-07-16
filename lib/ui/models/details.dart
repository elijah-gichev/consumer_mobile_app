class Details {
  final String city;
  final double costMin;
  final double costMax;
  final Layout layout;
  final double ceilingHeightMin;
  final double ceilingHeightMax;
  final bool isRenovated;
  final int floorMin;
  final int floorMax;
  final View windowView;
  final List<HouseType> houseType;
  final List<Parking> parking;

  Details({
    required this.city,
    required this.costMin,
    required this.costMax,
    required this.layout,
    required this.ceilingHeightMin,
    required this.ceilingHeightMax,
    required this.isRenovated,
    required this.floorMin,
    required this.floorMax,
    required this.windowView,
    required this.houseType,
    required this.parking,
  });

  Details copyWith({
    city,
    costMin,
    costMax,
    layout,
    ceilingHeightMin,
    ceilingHeightMax,
    isRenovated,
    floorMin,
    floorMax,
    windowView,
    houseType,
    parking,
  }) =>
      Details(
          city: city ?? this.city,
          costMin: costMin ?? this.costMin,
          costMax: costMax ?? this.costMax,
          layout: layout ?? this.layout,
          ceilingHeightMin: ceilingHeightMin ?? this.ceilingHeightMin,
          ceilingHeightMax: ceilingHeightMax ?? this.ceilingHeightMax,
          isRenovated: isRenovated ?? this.isRenovated,
          floorMin: floorMin ?? this.floorMin,
          floorMax: floorMax ?? this.floorMax,
          windowView: windowView ?? this.windowView,
          houseType: houseType ?? this.houseType,
          parking: parking ?? this.parking);

  @override
  String toString() {
    return 'Details(city: $city, costMin: $costMin, costMax: $costMax, layout: $layout, ceilingHeightMin: $ceilingHeightMin, ceilingHeightMax: $ceilingHeightMax, isRenovated: $isRenovated, floorMin: $floorMin, floorMax: $floorMax, windowView: $windowView, houseType: $houseType, parking: $parking)';
  }
}

enum Layout {
  studio,
  oneRoomed,
  twoRoomed,
  threeRoomed,
  fourRoomed,
  penthouse,
}

extension LayoutToString on Layout {
  String get string {
    switch (this) {
      case Layout.studio:
        return 'Студия';
      case Layout.oneRoomed:
        return '1-комнатная';
      case Layout.twoRoomed:
        return '2-комнатная';
      case Layout.threeRoomed:
        return '3-комнатная';
      case Layout.fourRoomed:
        return '4-комнатная';
      case Layout.penthouse:
        return 'Пентхаус';
    }
  }
}

enum View {
  outside,
  window,
}

extension ViewToString on View {
   String get string {
    switch (this) {
      case View.outside:
        return 'На улицу';
      case View.window:
        return 'Во двор';
    }
  }
}

enum HouseType {
  brick,
  monolithic,
  block,
}

extension HouseTypeString on HouseType {
  static String viewToString(HouseType data) {
    switch (data) {
      case HouseType.brick:
        return "Кирпичный";
      case HouseType.monolithic:
        return "Монолитный";
      case HouseType.block:
        return "Блочный";
      default:
        return "Блочный";
    }
  }
}

enum Parking {
  ground,
  underground,
  //parallel :3
}

extension ParkingString on Parking {
  static String viewToString(Parking data) {
    switch (data) {
      case Parking.ground:
        return "Наземная";
      case Parking.underground:
        return "Подземная";
      default:
        return "Наземная";
    }
  }
}
