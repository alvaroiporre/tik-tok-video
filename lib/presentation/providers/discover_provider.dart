import 'package:flutter/material.dart';
import 'package:tik_tok_video/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  
  bool initialloading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    //todo: load videos

    notifyListeners();
  }

}