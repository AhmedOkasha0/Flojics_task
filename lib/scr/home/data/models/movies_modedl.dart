
import 'package:flojics_task/scr/home/domain/entities/movies_show.dart';

class MoviesModel extends Movies {
  const MoviesModel({
    required super.id,
    required super.title,
    required super.coverUrl,
    required super.season,
    required super.directedBy,
    required super.releaseDate,
  });

  factory MoviesModel.fromJson(Map<String, dynamic> json) => MoviesModel(
      coverUrl: json['cover_url'] ?? "",
      directedBy: json['directed_by'] ?? "",
      id: json['id'] ?? 0,
      releaseDate: json['release_date'] ?? "",
      season: json['season'] ?? 0,
      title: json['title'] ?? "",);
}
