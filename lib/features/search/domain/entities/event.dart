import 'package:equatable/equatable.dart';

class Event extends Equatable {
  final String name;
  final DateTime date;
  final String locationName;
  final bool isFavorite;
  final Uri imageUrl;

  const Event({
    required this.name,
    required this.date,
    required this.locationName,
    required this.isFavorite,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [name, locationName];
}
