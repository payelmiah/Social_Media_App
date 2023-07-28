// ignore: camel_case_types

class Users{
  String name;
  String imageUrl;
  String numPosts;
  String numFollowers;
  String numFollowings;

  Users({
    required this.name,
    required this.imageUrl,
    required this.numPosts,
    required this.numFollowers,
    required this.numFollowings,

  });
}

List<Users> favorite = [

  Users(
      name: 'margot',
      imageUrl: 'assets/1.jpg', numPosts: '', numFollowers: '', numFollowings: '',
  ),

  Users(
    name: 'Alihossain',
    imageUrl: 'assets/2.jpg', numPosts: '', numFollowers: '', numFollowings: '',
  ),

  Users(
    name: 'chondra',
    imageUrl: 'assets/3.jpg', numPosts: '', numFollowers: '', numFollowings: '',
  ),

  Users(
    name: 'Mizanur',
    imageUrl: 'assets/4.jpg', numPosts: '', numFollowers: '', numFollowings: '',
  ),

  Users(
    name: 'hafsa',
    imageUrl: 'assets/5.jpg', numPosts: '', numFollowers: '', numFollowings: '',
  ),

  Users(
    name: 'nodi',
    imageUrl: 'assets/6.jpg', numPosts: '', numFollowers: '', numFollowings: '',
  ),
];