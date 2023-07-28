import 'package:social_media_app/model/user.dart';

class Post{
  final Users user;
  final String imageUrl;
  final String timePosted;
  final String description;
  final String comment;
  final String shared;
  final String link;

  Post({
    required this.user,
    required this.imageUrl,
    required this.timePosted,
    required this.description,
    required this.comment,
    required this.shared,
    required this.link,
});

}

final Users margot = Users(
  name: 'Margot', imageUrl: 'assets/1.jpg', numPosts: '', numFollowers: '', numFollowings: '',
);

final Users Alihossain = Users(
  name: 'Alihossain', imageUrl: 'assets/2.jpg', numPosts: '', numFollowers: '', numFollowings: '',
);

final Users chondra = Users(
  name: 'chondra', imageUrl: 'assets/3.jpg', numPosts: '', numFollowers: '', numFollowings: '',
);

final Users Mizanur = Users(
  name: 'Mizanur', imageUrl: 'assets/4.jpg', numPosts: '', numFollowers: '', numFollowings: '',
);

final Users hafsa = Users(
  name: 'hafsa', imageUrl: 'assets/5.jpg', numPosts: '', numFollowers: '', numFollowings: '',
);

final Users nodi = Users(
  name: 'nodi', imageUrl: 'assets/6.jpg', numPosts: '', numFollowers: '', numFollowings: '',
);

List <Post> posts = [
  Post(
    user: margot,
    imageUrl: 'assets/posts/11.jpg',
    timePosted: '3 hour ego',
    comment: '26',
    shared: '14',
    link: '45',
    description: 'Lorem ipsum is typically a corrupted version of De finibus bonorum et malorum, ',

  ),
  Post(
    user: Alihossain,
    imageUrl: 'assets/posts/12.jpg',
    timePosted: '1 hour ego',
    comment: '30',
    shared: '19',
    link: '55',
    description: 'Lorem ipsum is typically a corrupted version of De finibus bonorum et malorum, ',

  ),
  Post(
    user: chondra,
    imageUrl: 'assets/posts/13.jpg',
    timePosted: '5 hour ego',
    comment: '40',
    shared: '30',
    link: '40',
    description: 'Lorem ipsum is typically a corrupted version of De finibus bonorum et malorum,',

  ),
  Post(
    user: Mizanur,
    imageUrl: 'assets/posts/14.jpg',
    timePosted: '6 hour ego',
    comment: '100',
    shared: '50',
    link: '90',
    description: 'Lorem ipsum is typically a corrupted version of De finibus bonorum et malorum,',

  ),
  Post(
    user: hafsa,
    imageUrl: 'assets/posts/15.jpg',
    timePosted: '7 hour ego',
    comment: '64',
    shared: '33',
    link: '100',
    description: 'Lorem ipsum is typically a corrupted version of De finibus bonorum et malorum, ',

  ),
  Post(
    user: nodi,
    imageUrl: 'assets/posts/16.jpg',
    timePosted: '8 hour ego',
    comment: '68',
    shared: '10',
    link: '200',
    description: 'Lorem ipsum is typically a corrupted version of De finibus bonorum et malorum,',

  )
];