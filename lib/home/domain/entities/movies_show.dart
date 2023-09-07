import 'package:equatable/equatable.dart';

class MoviesShow extends Equatable {
  final int id;
  final String title;
  final String coverUrl;
  final String relaseData;
  final int season;
  final String directedBy;

  const MoviesShow({
    required this.id,
    required this.title,
    required this.coverUrl,
    required this.relaseData,
    required this.season,
    required this.directedBy,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        coverUrl,
        relaseData,
        season,
      ];
}
