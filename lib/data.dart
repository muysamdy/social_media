import 'model.dart';

final List<Post> posts = [
  Post(
    imageUrl: 'assets/images/post0.jpg',
    author: User(),
    title: 'Post 0',
    location: 'Location 0',
    like: 102,
    comment: 37,
  ),
  Post(
    imageUrl: 'assets/images/post1.jpg',
    author: User(),
    title: 'Post 1',
    location: 'Location 1',
    like: 532,
    comment: 129,
  ),
  Post(
    imageUrl: 'assets/images/post2.jpg',
    author: User(),
    title: 'Post 2',
    location: 'Location 2',
    like: 985,
    comment: 213,
  ),
  Post(
    imageUrl: 'assets/images/post3.jpg',
    author: User(),
    title: 'Post 3',
    location: 'Location 3',
    like: 402,
    comment: 25,
  ),
  Post(
    imageUrl: 'assets/images/post4.jpg',
    author: User(),
    title: 'Post 4',
    location: 'Location 4',
    like: 628,
    comment: 74,
  ),
  Post(
    imageUrl: 'assets/images/post5.jpg',
    author: User(),
    title: 'Post 5',
    location: 'Location 5',
    like: 299,
    comment: 28,
  ),
];
final users = [
  User(profileImageUrl: 'assets/images/user.jpg'),
  User(profileImageUrl: 'assets/images/user0.jpg'),
  User(profileImageUrl: 'assets/images/user1.jpg'),
  User(profileImageUrl: 'assets/images/user2.jpg'),
  User(profileImageUrl: 'assets/images/user3.jpg'),
  User(profileImageUrl: 'assets/images/user4.jpg'),
  User(profileImageUrl: 'assets/images/user5.jpg'),
];

final post = [
  Post(
    imageUrl: 'assets/images/post0.jpg',
    author: User(),
    title: 'Post 0',
    location: 'Location 0',
    like: 102,
    comment: 37,
  ),
  Post(
    imageUrl: 'assets/images/post2.jpg',
    author: User(),
    title: 'Post 2',
    location: 'Location 2',
    like: 985,
    comment: 213,
  ),
  Post(
    imageUrl: 'assets/images/post4.jpg',
    author: User(),
    title: 'Post 4',
    location: 'Location 4',
    like: 628,
    comment: 74,
  ),
];

final _favorites = [
  Post(
    imageUrl: 'assets/images/post1.jpg',
    author: User(),
    title: 'Post 1',
    location: 'Location 1',
    like: 532,
    comment: 129,
  ),
  Post(
    imageUrl: 'assets/images/post3.jpg',
    author: User(),
    title: 'Post 3',
    location: 'Location 3',
    like: 402,
    comment: 25,
  ),
  Post(
    imageUrl: 'assets/images/post4.jpg',
    author: User(),
    title: 'Post 4',
    location: 'Location 4',
    like: 628,
    comment: 74,
  ),
];

final User currentUser = User(
  profileImageUrl: 'assets/images/user1.jpg',
  backgroundImageUrl: 'assets/images/user_background.jpg',
  name: 'Rebecca',
  following: 453,
  follower: 973,
  posts: post,
  favorites: _favorites,
);
