import 'package:equatable/equatable.dart';

class Movies extends Equatable {
  final int id;
  final String title;
  final String coverUrl;
  final String relaseData;
  final int season;
  final String directedBy;

  const Movies({
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
