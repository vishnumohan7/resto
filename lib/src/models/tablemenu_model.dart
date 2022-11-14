class TableMenuList {
  String menuCategory;
  String menuCategoryId;
  String menuCategoryImage;
  String nexturl;

  TableMenuList({
    required this.menuCategory,
    required this.menuCategoryId,
    required this.menuCategoryImage,
    required this.nexturl,
  });

  factory TableMenuList.fromJson(Map<String, dynamic> json) {
    return TableMenuList(
        menuCategory: json["menuCategory"],
        menuCategoryId: json["menuCategoryId"],
        menuCategoryImage: json["menuCategoryImage"],
        nexturl: json["nexturl"]);
  }
}
