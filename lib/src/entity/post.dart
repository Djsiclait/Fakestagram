class Post {
  // fields
  final String username;
  final String location;
  final String description;
  final String hashtags;
  final int views;
  final int comments;

  // Constructor
  // @required username
  Post(this.username, {this.location = '', this.description = '', this.hashtags = '', this.views = 0, this.comments = 0,});

}