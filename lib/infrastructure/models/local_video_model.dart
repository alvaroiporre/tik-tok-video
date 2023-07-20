import 'package:flutter/material.dart';
import 'package:tik_tok_video/domain/entities/video_post.dart';

class VideoPostModel {
  final String caption;
  final String videoUrl;
  final int likes;
  final int views;

  VideoPostModel({
    required this.caption, 
    required this.videoUrl, 
    this.likes = 0, 
    this.views = 0
  });
  factory VideoPostModel.fromJson(Map<String, dynamic> json) => VideoPostModel(
    caption: json["name"], 
    videoUrl: json["videoUrl"], 
    likes: json["likes"], 
    views: json["views"]
    );
  Map<String, dynamic> toJson() => {
    "name": caption,
    "videoUrl": videoUrl,
    "likes": likes,
    "views": views
  };
  VideoPost toVideoPostEntity() => VideoPost(
    caption: caption, 
    videoUrl: videoUrl,
    likes: likes,
    views: views
  );
}