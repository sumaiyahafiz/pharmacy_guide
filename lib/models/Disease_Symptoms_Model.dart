class DiseaseSymptomsModel {
  final String d_s_Name;
  final String d_s_image;
  final String d_s_details;
  final List<String> Symptoms;
  final String?d_s_SymptomsDetails;
  final List<String> recovery;
  final List<String>? resistance;

  DiseaseSymptomsModel( {
    required this.d_s_Name,
    required this.d_s_image,
    required this.d_s_details,
    required this.Symptoms,
    this.d_s_SymptomsDetails,
    required this.recovery,
    this.resistance,
  });
}

List<DiseaseSymptomsModel> d_s_List = [
  DiseaseSymptomsModel(
    d_s_Name: 'Back Pain',
    d_s_image:
        'https://losethebackpain.com/wp-content/uploads/2011/06/Burning-Back.png',
    d_s_details:
        "Back pain is a very painful condition for anyone. In order to know about back pain, it is necessary to first know about the spine. The spine is not a single bone, it is made up of 33 bones. Each bone is separated with a cushion of cartilage. This cushion is called disc.Due to this, it is possible to bend the spine back and forth. The spine is not perfectly straight or straight. From the side, its natural shape is similar to that of the English letter z. The main condition for the prevention of back pain is to maintain this shape of the bar while doing any work. The abdominal and back muscles support the spine and help in movement.The causes of back pain can arise from the spine and its supporting muscles, or from the internal organs of the body, whose nerve supply branches extend to the back, from where the back pain can also occur. Some problems with the internal organs of the body can also cause pain in the lower back.",
    Symptoms: [
      'Injury',
      'Strained muscles',
      'Standing or sitting for unusually long periods',
      'Pregnancy',
    ],
    recovery: [
      'Manage Anxiety About Low Back Pain. ',
      'Eat Properly to Help the Back Heal.',
      'Stop Smoking to Improve Oxygen Flow to the Spine.',
      'Get Adequate Sleep to Support the Healing Process.',
      'Control Medication Use for Back Pain.',
    ],
  ),

  DiseaseSymptomsModel(
    d_s_Name: 'Hemorrhoids',
    d_s_image: 'http://www.rouginedarou.com/wp-content/uploads/2019/09/tp_hemorrhoid-1200x1199.jpg',
    d_s_details:
        "Hemorrhoids (HEM-uh-roids), also called piles, are swollen veins in your anus and lower rectum, similar to varicose veins. Hemorrhoids can develop inside the rectum (internal hemorrhoids) or under the skin around the anus (external hemorrhoids).Nearly three out of four adults will have hemorrhoids from time to time. Hemorrhoids have a number of causes, but often the cause is unknown.Fortunately, effective options are available to treat hemorrhoids. Many people get relief with home treatments and lifestyle changes.",
    Symptoms: [
      'Itching or irritation in your anal region',
      'Pain or discomfort',
      'Swelling around your anus',
      'Bleeding',
      'Painless bleeding during bowel movements. You might notice small amounts of bright red blood on your toilet tissue or in the toilet.',
      'A hemorrhoid to push through the anal opening (prolapsed or protruding hemorrhoid), resulting in pain and irritation.',
      'Severe pain',
      'Swelling',
      'Inflammation',
      'A hard lump near your anus'
    ],
    d_s_SymptomsDetails: '',
    recovery: [
      'Eat a high-fiber diet and take fiber supplements',
      'Drink at least 8 to 10 glasses of water each day',
      'Exercise regularly to maintain regularity',
      'Take stool softeners and laxatives as needed to avoid straining during bowel movements',
],
  ),
  DiseaseSymptomsModel(
    d_s_Name: 'Fever',
    d_s_image: 'http://baptisthealth.tips/wp-content/uploads/2014/12/blog-peds-fever.png',
    d_s_details:
        " You probably have a fever if your temperature is 38°C or higher.A normal temperature is around 36-37°C, although it depends on your age, what you’ve been doing, the time of day and how you take the measurement.",
Symptoms: ['Sweating',
  'Chills and shivering',
  'Headache',
  'Muscle aches',
  'Loss of appetite',
  'Irritability',
  'Dehydration',
  'General weakness',
],

recovery: [
  "it's important to stay well hydrated so drink plenty of clear non-alcoholic fluids",
  "ice blocks or iced drinks may be soothing",
  "wear lightweight clothing and avoid using blankets, doonas or quilts in bed as this may make you too hot and increase your temperature",
  "keep the room at a comfortable temperature",
  "rest and avoid heavy activity until your symptoms go away",
  "avoid cold baths or sponging — this can actually make you or your child feel more uncomfortable",
  "see your doctor if your fever doesn't go away or you are concerned",

],
  ),
  DiseaseSymptomsModel(
    d_s_Name: 'Whooping Cough',
    d_s_image: 'https://empowertotalhealth.com.au/wp-content/uploads/2017/02/Flu-Season1-1020x560.jpg',
    d_s_details:
        "Whooping cough is a bacterial infection that causes severe coughing and trouble breathing. The illness is preventable through immunization. However, the vaccine may wear out after 5 to 10 years, putting anyone at risk of infection. In modern times, doctors are able to prevent whooping cough by encouraging vaccination. Before a vaccine was available, the disease was a major cause of childhood deaths.Whooping cough, also called pertussis, is a very contagious disease that mainly affects infants and young children. It is caused by a bacterium called Bordetella pertussis. Pertussis is characterized by coughing that ends with a characteristic 'whoop' as air is inhaled.",
Symptoms: [
  'Coughing, violently and rapidly, until all the air has left the lungs and a person is forced to inhale, causing a "whooping" sound',
  'Sneezing',
  'Nasal discharge',
  'Fever',
  'Sore, watery eyes',
  'Lips, tongue, and nail beds turning blue during coughing spells'

],
recovery: [''],
),
  DiseaseSymptomsModel(
      d_s_Name: 'Vitiligo',
      d_s_image: 'https://www.verduracare.com/blog/wp-content/uploads/2018/05/vitili-close-1024x620.jpg',
      d_s_details: '',
Symptoms: ['sumaiya'],
recovery: ['sumaiya','sjdh'],),
  DiseaseSymptomsModel(
    d_s_Name: 'Vertigo',
    d_s_image: 'https://www.blissmedicines.com/wp-content/uploads/2020/05/BLISS_DIZZINESSANDVERTIGO_A.jpg',
    d_s_details:
        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of",

Symptoms: ['sumaiya'],
recovery: ['sumaiay'],
),
  DiseaseSymptomsModel(
      d_s_Name: 'Urinary Tract Infection',
      d_s_image: 'https://betahealthy.com/wp-content/uploads/2020/08/Urinary-Tract-Infection.jpg',
      d_s_details: '', Symptoms: [''], recovery: [''
      '']),
  DiseaseSymptomsModel(
      d_s_Name: 'Tuberculosis',
      d_s_image: 'https://cdn.mos.cms.futurecdn.net/h5FQsSizWwiUWBXMmhYkD8-1200-80.jpg',
      d_s_details: '', Symptoms: [], recovery: []),
  /*DiseaseSymptomsModel(
      d_s_Name: 'Vaginitis',
      d_s_image: 'https://www.bjfm.co.uk/media/32636/halitosis.jpg',
      d_s_details: ''),


  DiseaseSymptomsModel(
      d_s_Name: 'Trichomoniasis',
      d_s_image: 'https://www.bjfm.co.uk/media/32636/halitosis.jpg',
      d_s_details: ''),
  DiseaseSymptomsModel(
      d_s_Name: 'Tonsillitis',
      d_s_image: 'https://www.bjfm.co.uk/media/32636/halitosis.jpg',
      d_s_details: ''),
  DiseaseSymptomsModel(
      d_s_Name: 'Thalassemia',
      d_s_image: 'https://www.bjfm.co.uk/media/32636/halitosis.jpg',
      d_s_details: ''),
  DiseaseSymptomsModel(
      d_s_Name: 'Tetanus',
      d_s_image: 'https://www.bjfm.co.uk/media/32636/halitosis.jpg',
      d_s_details: ''),
  DiseaseSymptomsModel(d_s_Name: 'Syphilis', d_s_image: '', d_s_details: ''),
  DiseaseSymptomsModel(d_s_Name: 'Swine Flu', d_s_image: '', d_s_details: ''),
  DiseaseSymptomsModel(d_s_Name: 'Stroke', d_s_image: '', d_s_details: ''),
  DiseaseSymptomsModel(d_s_Name: 'Stress', d_s_image: '', d_s_details: ''),
  DiseaseSymptomsModel(d_s_Name: 'Stroke', d_s_image: '', d_s_details: ''),
  DiseaseSymptomsModel(d_s_Name: 'Stroke', d_s_image: '', d_s_details: ''),
  DiseaseSymptomsModel(d_s_Name: 'Stroke', d_s_image: '', d_s_details: ''),*/
];
