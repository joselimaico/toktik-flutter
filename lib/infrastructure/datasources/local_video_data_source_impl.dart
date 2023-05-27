import 'package:toktik/domain/entities/video_post.dart';

import '../../domain/datasources/video_posts_datasource.dart';
import '../../shared/data/local_video_posts.dart';
import '../models/local_video_model.dart';

class LocalVideoPostsDatasourceImpl implements VideoPostsDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    // TODO: implement getFavoriteVideosByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos = videoPosts
        .map(
          (video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity(),
        )
        .toList();

    return newVideos;
  }
}
