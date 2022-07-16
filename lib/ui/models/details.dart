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

extension PlanString on Plan {
  static String planToString(Plan data) {
    switch (data) {
      case Plan.studio:
        return "Студия";
      case Plan.oneRoomed:
        return "Однокомнатная";
      case Plan.twoRoomed:
        return "Две комнаты";
      case Plan.threeRoomed:
        return "Три комнаты";
      case Plan.fourRoomed:
        return "Четыре комнаты";
      case Plan.penthouse:
        return "Пентхауз";
      default:
        return "Студия";
    }
  }
}

enum View {
  outside,
  window,
}

extension ViewString on View {
  String viewToString(View data) {
    switch (data) {
      case View.outside:
        return "На улицу";
      case View.window:
        return "Во двор";
      default:
        return "Во двор";
    }
  }
}

enum HouseType {
  brick,
  monolithic,
  block,
}

extension HouseTypeString on HouseType {
  String viewToString(HouseType data) {
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
  String viewToString(Parking data) {
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
