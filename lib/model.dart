import 'package:flutter/foundation.dart';

/// Immutable Post data class.

@immutable
class Post {
  Post({
    this.imageUrl,
    this.author,
    this.title,
    this.location,
    this.like,
    this.comment,
  });

  final String imageUrl;
  final User author;
  final String title;
  final String location;

  final int like;
  final int comment;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Post &&
          runtimeType == other.runtimeType &&
          imageUrl == other.imageUrl &&
          author == other.author &&
          title == other.title &&
          location == other.location &&
          like == other.like &&
          comment == other.comment;

  @override
  int get hashCode =>
      imageUrl.hashCode ^
      author.hashCode ^
      title.hashCode ^
      location.hashCode ^
      like.hashCode ^
      comment.hashCode;

  Post copyWith({
    String imageUrl,
    User author,
    String title,
    String location,
    int like,
    int comment,
  }) =>
      Post(
        imageUrl: imageUrl ?? this.imageUrl,
        author: author ?? this.author,
        title: title ?? this.title,
        location: location ?? this.location,
        like: like ?? this.like,
        comment: comment ?? this.comment,
      );

  @override
  String toString() => "Post{"
      "imageUrl: $imageUrl"
      "author: $author"
      "title: $title"
      "location: $location"
      "like: $like"
      "comment: $comment";
}

// Immutable User data class.
class User {
  User({
    this.profileImageUrl,
    this.backgroundImageUrl,
    this.name,
    this.follower,
    this.following,
    this.posts,
    this.favorites,
  });

  final String profileImageUrl;
  final String backgroundImageUrl;
  final String name;
  final int following;

  final int follower;
  final List<Post> posts;
  final List<Post> favorites;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          profileImageUrl == other.profileImageUrl &&
          follower == other.follower &&
          following == other.following &&
          posts == other.posts &&
          favorites == other.favorites &&
          backgroundImageUrl == other.backgroundImageUrl;

  @override
  int get hashCode =>
      profileImageUrl.hashCode ^
      backgroundImageUrl.hashCode ^
      name.hashCode ^
      follower.hashCode ^
      following.hashCode ^
      posts.hashCode ^
      favorites.hashCode;

  User copyWith({
    String profileImageUrl,
    String backgroundImageUrl,
    String name,
    int following,
    int follower,
    List<Post> posts = const <Post>[],
    List<Post> favorites = const <Post>[],
  }) =>
      User(
        profileImageUrl: profileImageUrl ?? this.profileImageUrl,
        backgroundImageUrl: backgroundImageUrl ?? this.backgroundImageUrl,
        name: name ?? this.name,
        following: following ?? this.following,
        follower: follower ?? this.follower,
        posts: posts ?? this.posts,
        favorites: favorites ?? this.favorites,
      );

  @override
  String toString() => "User{"
      "profileImageUrl: $profileImageUrl"
      "backgroundImageUrl: $backgroundImageUrl"
      "name: $name"
      "follower: $follower"
      "following: $following"
      "posts: $posts"
      "favorites: $favorites";
}
