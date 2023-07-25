import 'package:flutter/material.dart';
import 'package:tik_tok_video/domain/entities/video_post.dart';
import 'package:tik_tok_video/domain/repositories/video_posts_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  
  final VideoPostRepository videosRepository;

  bool initialloading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({
    required this.videosRepository
  });

  Future<void> loadNextPage() async {

    //await Future.delayed(const Duration(seconds: 2));
    
    // final List<VideoPost> newVideos = videoPosts.map(
    //   (video) => VideoPostModel.fromJson(video).toVideoPostEntity()
    // ).toList();

    final newVideos = await videosRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialloading = false;
    notifyListeners();
  }

}