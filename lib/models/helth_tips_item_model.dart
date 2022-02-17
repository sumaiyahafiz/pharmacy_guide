class HealthTipsItemModel {
  final String h_item_name;
  final String h_item_cata;
  final String h_item_img;
  final String h_item_heading;
  final String h_item_details;
  final List<String>? h_item_subDetails;

  HealthTipsItemModel( {
    required this.h_item_name,
    required this.h_item_cata,
    required this.h_item_img,
    required this.h_item_heading,
    required this.h_item_details,
    this.h_item_subDetails,
  });
}

List<HealthTipsItemModel> h_item_list = [
  HealthTipsItemModel(
      h_item_name: 'Vitamin A',
      h_item_cata: 'food_natrition',
      h_item_img:
          'https://images.lifealth.com/uploads/2018/03/Which-foods-are-the-rich-source-of-vitamin-A.jpg',
      h_item_heading: 'What is vitamin A?',
      h_item_details:
          'Vitamin A is a fat-soluble vitamin that is naturally present in many foods. Vitamin A is important for normal vision, the immune system, and reproduction. Vitamin A also helps the heart, lungs, kidneys, and other organs work properly.There are two different types of vitamin A. The first type, preformed vitamin A, is found in meat, poultry, fish, and dairy products. The second type, provitamin A, is found in fruits, vegetables, and other plant-based products. The most common type of provitamin A in foods and dietary supplements is beta-carotene.'),
  HealthTipsItemModel(
      h_item_name: 'Vitamin B',
      h_item_cata: 'food_natrition',
      h_item_img:
          'https://www.stunmore.com/uploads/9/0/2/4/90246451/vitamin-b-food-sources_orig.png',
      h_item_heading: 'What is vitamin A?',
      h_item_details: 'What is vitamin E?Vitamin E is a powerful, fat-soluble antioxidant that helps protect cell membranes against damage caused by free radicals and prevents the oxidation of LDL cholesterol.',
      h_item_subDetails: ['samir', 'reaz', "Mohammad"]),
  HealthTipsItemModel(
      h_item_name: 'Vitamin C',
      h_item_cata: 'food_natrition',
      h_item_img:
          'https://www.befitandfine.com/wp-content/uploads/2020/07/Vitamin-C-rich-foods-1024x538.jpg',
      h_item_heading: 'What is vitamin A?',
      h_item_details: 'Vitamin C (also known as ascorbic acid) is abundant in vegetables and fruits. A water-soluble vitamin and powerful antioxidant, it helps the body form and maintain connective tissue, including bones, blood vessels, and skin',
      h_item_subDetails: ['samir', 'reaz', "Mohammad"]),
  HealthTipsItemModel(
      h_item_name: 'Vitamin D',
      h_item_cata: 'food_natrition',
      h_item_img:
          'https://www.healthpacker.com/wp-content/uploads/2020/08/7-best-vitamin-d-rich-foods.jpg',
      h_item_heading: 'What is vitamin A?',
      h_item_details: 'What is vitamin D?Vitamin D, often referred to as the ̶sunshine vitamin,” is actually a fat-soluble hormone that the body can synthesize naturally. Vitamin D2 (ergocalciferol) is synthesized by plants, and vitamin D3 (cholecalciferol) is synthesized by humans when skin is exposed to ultraviolet-B (UVB) rays from sunlight.',
      h_item_subDetails: ['What is vitamin K?Vitamin K is a fat-soluble compounds', 'reaz', "Mohammad"]),
  HealthTipsItemModel(
      h_item_name: 'Vitamin E',
      h_item_cata: 'food_natrition',
      h_item_img:
          'https://www.thehealthy.com/wp-content/uploads/2013/09/shutterstock_762894349.jpg',
      h_item_heading: 'What is vitamin A?',
      h_item_details:
          'What is vitamin E?Vitamin E is a powerful, fat-soluble antioxidant that helps protect cell membranes against damage caused by free radicals and prevents the oxidation of LDL cholesterol.'),
  HealthTipsItemModel(
      h_item_name: 'Vitamin K',
      h_item_cata: 'food_natrition',
      h_item_img:
          'https://www.abestfashion.com/wp-content/uploads/2019/12/Vitamin-K-Foods.jpg',
      h_item_heading: 'What is vitamin A?',
      h_item_details:
          'What is vitamin K?Vitamin K is a fat-soluble compounds . It is found in plants and is the primary source of vitamin K that humans obtain through foods.'),
  HealthTipsItemModel(
      h_item_name: 'Vitamin B 12',
      h_item_cata: 'food_natrition',
      h_item_img:
          'https://vaya.in/news/wp-content/uploads/2019/02/Vitamin-B12-foods.jpg',
      h_item_heading: 'What is vitamin A?',
      h_item_details:
          'What Is Vitamin B12?Vitamin B12, also called cobalamin, is a nutrient you need for good health. It’s one of eight B vitamins that help the body convert the food you eat into glucose, which gives you energy. Vitamin B12 has a number of additional functions'),
  HealthTipsItemModel(
    h_item_name: 'Physical Activity',
    h_item_cata: 'exercise_fitness',
    h_item_img:
        'https://clipartcraft.com/images/running-clipart-trail-runner-1.png',
    h_item_heading: 'What is vitamin A?',
    h_item_details:
        'Physical activity is an important part of your weight management program.Most weight loss occurs because of decreased calorie intake.\n Sustained physical activity is most helpful in the prevention of weight regain.In addition, exercise has a benefit of reducing risks of cardiovascular disease and diabetes, beyond that produced by weight reduction alone.Start exercising slowly, and gradually increase the intensity.Trying too hard at first can lead to injury.',
  ),
  HealthTipsItemModel(
      h_item_name: 'Physical Activity Guide',
      h_item_cata: 'exercise_fitness',
      h_item_img:
          'https://www.daveynutrition.com/wp-content/uploads/2020/11/exercise-pyramid.png',
      h_item_heading: 'What is vitamin A?',
      h_item_details:
          "Adults who are physically active are healthierand less likely to develop many chronic diseasesl than adults who are inactive.They also have better fitness,including a healthier body size and composition.These benefits are gained by men and women and people nof all races and ethnicity who have been studied.Adults gain most of these health benefits when they do the equivalent of at least 15 minutes of moderate intensity aerobic physical activity (2 hours and 3 minutes) each week. Adults gain additional and more extensive health and fitness benefits with even more physical activity.Muscle-strengthening activities also provide health benefits and are an importantpart of an adult’s overall physical activity plan"),
  HealthTipsItemModel(
      h_item_name: ' A Smart Approach to Weight',
      h_item_cata: 'exercise_fitness',
      h_item_img:
          'https://boardview.io/content/uploads/2017/07/smart-goals-acronym.png',
      h_item_heading: 'What is vitamin A?',
      h_item_details:
          'SMART Approach to Weight Loss When it comes to weight loss, it’s easy to focus only on the number of pounds you need to lose without much thought given to lasting ̶lifestyle” changes. Successful weight loss is not so much about a number on the scale, it’s about adopting a lifestyle and setting goals that are based on changing the way you eat, exercise and behave. One way to do that is to use the SMART approach in creating a weight loss plan'),
  HealthTipsItemModel(
    h_item_name: 'Getting Fit for Life',
    h_item_cata: 'exercise_fitness',
    h_item_img:
        'https://www.fitforlifewellnessclinic.com/wp-content/uploads/2016/02/cropped-Fit-for-Life-Logo.jpg',
    h_item_heading: 'What is vitamin A?',
    h_item_details:
        'Exercise and physical activity are good for you, no matter how old you are. In fact, staying active can help you:Keep and improve your strength so you can stay independen Have more energy to do the things you want to doImprove your balance Prevent or delay some diseases like heart disease, diabetes, and osteoporosis Perk up your mood and reduce depression You don’t need to buy special clothes or belong to a gym to become more active. Physical activity can and should be part of your everyday life. Find things you like to do. Go for brisk walks. Ride a bike. Dance. Work around the house. Garden. Climb stairs. Swim. Rake leaves. Try different kinds of activities that keep you moving. Look for new ways to build physical activity into your daily routine.',
  ),
  HealthTipsItemModel(
    h_item_name: 'Healthy Eating Plan',
    h_item_cata: 'exercise_fitness',
    h_item_img:
        'https://healthsport.com/wp-content/uploads/2019/11/Healthy-Eating-Habits.png',
    h_item_heading: 'What is vitamin A?',
    h_item_details:
        'Exercise and physical activity are good for you, no matter how old you are. In fact, staying active can help you:Keep and improve your strength so you can stay independentHave more energy to do the things you want to doImprove your balancePrevent or delay some diseases like heart disease, diabetes, and osteoporosisPerk up your mood and reduce depressionYou don’t need to buy special clothes or belong to a gym to become more active. Physical activity can and should be part of your everyday life. Find things you like to do. Go for brisk walks. Ride a bike. Dance. Work around the house. Garden. Climb stairs. Swim. Rake leaves. Try different kinds of activities that keep you moving. Look for new ways to build physical activity into your daily routine.',
  ),
  HealthTipsItemModel(
      h_item_name: ' How to Quit Smoking',
      h_item_cata: 'exercise_fitness',
      h_item_img:
          'http://buzznigeria.com/wp-content/uploads/2015/10/nosmoking.jpg',
      h_item_heading: 'What is vitamin A?',
      h_item_details:
          'Smoking is implicated as a risk factor for many health problems, including:Premature death: cigarette smoking is the single most important cause of premature death. Most premature deaths caused by smoking are due to lung cancer, chronic obstructive pulmonary disease and coronary heart disease.Cancers of the upper respiratory tract, oesophagus, bladder, kidney, stomach, and pancreas; myeloid leukaemia.Cerebrovascular disease, aortic aneurysm, and heart failure caused by coronary heart disease.Peptic ulceration (gastric and duodenal).Angina, peripheral arterial disease (including Buerger’s disease), macular degeneration, impotence, infertility, skin wrinkling, osteoporosis.Increased severity of asthma, respiratory tract infections and diabetic retinopathy.Passive smoking: exposure to environmental tobacco smoke causes an increased risk of smoking-related diseases, especially lung cancer and heart disease.Children exposed to environmental tobacco smoke are at increased risk of sudden infant death syndrome, asthma, otitis media and chest infections in the first years of life.'),
  HealthTipsItemModel(
      h_item_name: 'How to Lose Weight ',
      h_item_cata: 'exercise_fitness',
      h_item_img:
          'https://www.mopobesity.com/wp-content/uploads/2017/02/blog2.jpg',
      h_item_heading: 'What is vitamin A?',
      h_item_details:
          'Your weight is a balancing act, and calories are part of that equation. Fad diets may promise you that counting carbs or eating a mountain of grapefruit will make the pounds drop off. But when it comes to weight loss, it’s calories that count. Weight loss comes down to burning more calories than you take in. You can do that by reducing extra calories from food and beverages, and increasing calories burned through physical activity'),
  HealthTipsItemModel(
      h_item_name: ' ',
      h_item_cata: '',
      h_item_img:
          'https://www.stunmore.com/uploads/9/0/2/4/90246451/vitamin-b-food-sources_orig.png',
      h_item_heading: 'What is vitamin A?',
      h_item_details: 'h_item_details'),
];
