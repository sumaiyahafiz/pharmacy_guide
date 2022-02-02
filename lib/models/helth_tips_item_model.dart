class HealthTipsItemModel {
  final String h_item_name;
  final String h_item_cata;
  final String h_item_img;
  final String h_item_details;

  HealthTipsItemModel({
    required this.h_item_name,
    required this.h_item_cata,
    required this.h_item_img,
    required this.h_item_details,
  });
}

List<HealthTipsItemModel> h_item_list = [
  HealthTipsItemModel(
      h_item_name: 'Vitamin A',
      h_item_cata: 'food_natrition',
      h_item_img: 'h_item_img',
      h_item_details: 'h_item_details'),
  HealthTipsItemModel(
      h_item_name: 'Vitamin A',
      h_item_cata: 'food_natrition',
      h_item_img: 'h_item_img',
      h_item_details: 'h_item_details'),
  HealthTipsItemModel(
      h_item_name: 'Vitamin A',
      h_item_cata: 'food_natrition',
      h_item_img: 'h_item_img',
      h_item_details: 'h_item_details'),
];
