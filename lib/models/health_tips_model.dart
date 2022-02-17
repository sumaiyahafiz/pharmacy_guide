class Healthtips_Model {
  final String Name, image, h_t_cata;

  Healthtips_Model({
    required this.Name,
    required this.image,
    required this.h_t_cata,
  });
}

List<Healthtips_Model> h_tips = [
  Healthtips_Model(
    Name: 'Food & Nutrition',
    image:
        'https://kripalu.org/sites/default/files/GettyImages-1069478762_2019foodtrends_ref.jpg',
    h_t_cata: 'food_natrition',
  ),
  Healthtips_Model(
    Name: 'Exercise & Fitness',
    image: 'https://pngimg.com/uploads/gym_equipment/gym_equipment_PNG172.png',
    h_t_cata: 'exercise_fitness',
  ),
  Healthtips_Model(
    Name: 'Health & Advice',
    image:
        'https://www.netclipart.com/pp/m/10-107941_light-bulb-clipart-png.png',
    h_t_cata: 'health_advice',
  ),
  Healthtips_Model(
    Name: 'Mother & Child health',
    image:
        'https://www.clipartkey.com/mpngs/m/315-3156356_maternal-infant-and-child-care-photo-maternal-and.png',
    h_t_cata: 'mother_childHealth',
  ),
  Healthtips_Model(
    Name: 'First Aid',
    image: 'https://hometreatsuk.com/wp-content/uploads/2019/06/KA620-1.jpg',
    h_t_cata: 'fist_aid',
  ),
];
