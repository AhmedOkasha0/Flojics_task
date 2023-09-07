import 'package:flojics_task/home/domain/entities/movies_show.dart';

class MoviesModel extends Movies {
  const MoviesModel({
    required super.id,
    required super.title,
    required super.coverUrl,
    required super.relaseData,
    required super.season,
    required super.directedBy,
  });

  factory MoviesModel.fromJson(Map<String, dynamic> json) => MoviesModel(
      id: json["id"],
      title: json["title"],
      coverUrl: json["cover_url"],
      relaseData: json["release_date"],
      season: json["season"],
      directedBy: json["directed_by"]);
}
