class AddonCat {
  String addonCategory;
  String addonCategoryId;
  int addonSelection;
  String nexturl;

  AddonCat({
    required this.addonCategory,
    required this.addonCategoryId,
    required this.addonSelection,
    required this.nexturl,
  });

  factory AddonCat.fromJson(Map<String, dynamic> json) {
    return AddonCat(
        addonCategory: json["addonCategory"],
        addonCategoryId: json["addonCategoryId"],
        addonSelection: json["addonSelection"],
        nexturl: json["nexturl"]);
  }
}
