import 'package:clean_arch_movie_app/features/movie/domain/entities/generes.dart';

class GenresModel extends Genres {
  const GenresModel({required super.id, required super.name});

  factory GenresModel.fromJson(Map<String, dynamic> json) =>
      GenresModel(id: json["id"], name: json["name"]);

  Map<String, dynamic> toJson() => {"id": id, "name": name};
}
