import 'package:equatable/equatable.dart';

class Movies extends Equatable {
  final int id;
  final String title;
  final String coverUrl;
  final int season;
  final String directedBy;
  final String releaseDate;

  const Movies({
    required this.id,
    required this.title,
    required this.coverUrl,
    required this.season,
    required this.directedBy,
    required this.releaseDate,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        coverUrl,
        season,
        releaseDate
      ];
}
