import 'package:tik_tok_video/domain/datasources/video_posts_datasource.dart';
import 'package:tik_tok_video/domain/entities/video_post.dart';
import 'package:tik_tok_video/infrastructure/models/local_video_model.dart';
import 'package:tik_tok_video/shared/data/local_video_posts.dart';

class LocalVideoDatasourceImpl implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async{
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos = videoPosts.map(
      (video) => VideoPostModel.fromJson(video).toVideoPostEntity()
    ).toList();

    return newVideos;
  }

}