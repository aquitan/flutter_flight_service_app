class AircraftFeatures {
  const AircraftFeatures({
    required this.wifi,
    required this.inFlightEntertaiment,
    required this.powerOutlets,
    required this.cabinClass,
  });

  final bool wifi;
  final bool inFlightEntertaiment;
  final bool powerOutlets;
  final List<String> cabinClass;
}