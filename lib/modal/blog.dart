class Blog {
  final String id;
  final String title;
  final String name;
  final String date;
  final String subTitle;
  final String desc;
  final String img;
  final String min;

  Blog(
      {required this.id,
      required this.title,
      required this.desc,
      required this.img,
      required this.date,
      required this.name,
      required this.subTitle,
      this.min = "5"});

  // factory Blog.fromJson(Map<String, dynamic> json) {
  //   return Blog(
  //     id: json['data']['id'],
  //     title: json['data']['title'],
  //     desc: json['data']['desc'],
  //   );
  // }
}
