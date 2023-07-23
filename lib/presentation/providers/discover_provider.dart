import 'package:flutter/material.dart';
import 'package:tik_tok_video/domain/entities/video_post.dart';
import 'package:tik_tok_video/infrastructure/models/local_video_model.dart';
import 'package:tik_tok_video/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {
  
  //todo: Repository, DataSource

  bool initialloading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {

    //await Future.delayed(const Duration(seconds: 2));
    
    final List<VideoPost> newVideos = videoPosts.map(
      (video) => VideoPostModel.fromJson(video).toVideoPostEntity()
    ).toList();

    videos.addAll(newVideos);
    initialloading = false;
    notifyListeners();
  }

}