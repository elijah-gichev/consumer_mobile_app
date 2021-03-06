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
        return '????????????';
      case Layout.oneRoomed:
        return '1-??????????????????';
      case Layout.twoRoomed:
        return '2-??????????????????';
      case Layout.threeRoomed:
        return '3-??????????????????';
      case Layout.fourRoomed:
        return '4-??????????????????';
      case Layout.penthouse:
        return '????????????????';
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
        return '???? ??????????';
      case View.window:
        return '???? ????????';
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
        return "??????????????????";
      case HouseType.monolithic:
        return "????????????????????";
      case HouseType.block:
        return "??????????????";
      default:
        return "??????????????";
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
        return "????????????????";
      case Parking.underground:
        return "??????????????????";
      default:
        return "????????????????";
    }
  }
}
