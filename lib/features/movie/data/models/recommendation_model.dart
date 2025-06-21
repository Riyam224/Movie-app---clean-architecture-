import 'package:clean_arch_movie_app/features/movie/domain/entities/recommendation.dart';

class RecommendationModel extends Recommendation {
  const RecommendationModel({super.backdropPath, required super.id});

  factory RecommendationModel.fromJson(Map<String, dynamic> json) {
    return RecommendationModel(
      id: json['id'],
      backdropPath:
          json['backdrop_path'] ??
          'https://images.pexels.com/photos/1200450/pexels-photo-1200450.jpeg',
    );
  }
}
