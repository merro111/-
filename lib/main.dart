import 'package:flutter/material.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'რეცეპტების წიგნი',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrange,
          primary: const Color(0xFFD32F2F),
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFFDFBF7),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color(0xFFD32F2F),
          foregroundColor: Colors.white,
          elevation: 2,
        ),
      ),
      home: const MainPage(),
    );
  }
}

// -----------------------------------------------------------------------------
// MODELS & DATA STRUCTURES
// -----------------------------------------------------------------------------

class Recipe {
  final String title;
  final List<String>? ingredients;
  final String? description;
  final List<RecipeSection>? extraSections;

  Recipe({
    required this.title,
    this.ingredients,
    this.description,
    this.extraSections,
  });
}

class RecipeSection {
  final String? title; // Header (e.g. "II ფენა", "კრემი", "1 ეტაპი")
  final List<String>? ingredients;
  final String? description;

  RecipeSection({
    this.title,
    this.ingredients,
    this.description,
  });
}

// -----------------------------------------------------------------------------
// RECIPES DATA (ALL 27 CAKES/DESSERTS INCLUDED)
// -----------------------------------------------------------------------------

final List<Recipe> cakesList = [
  Recipe(
    title: 'პეჩენია',
    ingredients: [
      'შაქარი _ 1 ჭიქა',
      'კვერცხი _ 3 ცალი',
      'სოდა + ძმრით _ 0,5 ჩაის კოვზი',
      'ფქვილი _ 2,5-3 ჭიქა',
      'შაქრის პუდრა _ მოსაყრელად',
    ],
    description:
        'დაჭერით კარაქი, რათა ადვილად დარბილდეს. ჯამში ათქვიფეთ კვერცხი შაქართან ერთად, დაუმატეთ სოდა + ძმრით და კიდევ ათქვიფეთ. შემდეგ დაუმატეთ დარბილებული კარაქი ათქვიფეთ ერთგვაროვანი მასის მიღებამდე. ნელ-ნელა დაუმატეთ ფქვილი! უმატეთ იქამდე, სანამ ცომის თქვეფა მიქსერით არ გაგიჭირდებათ. შემდეგ შეცვალეთ მიქსერი ხის კოვზით, როცა ცომი კარგად გასქელდება გააგრძელეთ მოზელვა ხელით. ცომი დააგუნდავეთ და შეფუთეთ ცელოფანში. შეინახეთ მაცივარში. ღუმელი გაახურეთ 200 გრადუსზე - 35-40 წუთის განმავლობაში აცხვეთ.',
  ),
  Recipe(
    title: 'პიშკა',
    ingredients: [
      '1 ჭიქა თბილი წყალი',
      '2 ჩაის კოვზი დროჟი',
      '1.5 სუფრის კოვზი შაქარი',
      '1.5 ჭიქა ფქვილი',
      '1 საათი გავაჩეროთ',
    ],
  ),
  Recipe(
    title: 'კექსი',
    ingredients: [
      '4 ცალი კვერცხი',
      'ნახევარი ბანკა მაწონი (სოდა)',
      '2 ჭიქა შაქარი',
      'ნახევარი პაჩკა მარგარინი',
      'ფქვილი თვალით',
      'კაკაო',
      'ქიშმიში',
    ],
    description: 'გამოვაცხოთ ნელ პარზე ცხიმწასმულ ყალიბში.',
  ),
  Recipe(
    title: 'მოხარშული კრემი',
    ingredients: [
      '1 ლიტრი რძე',
      '1 ჭიქა პურის ფქვილი',
      '2 ჭიქა შაქარი',
    ],
  ),
  Recipe(
    title: 'კაროლინა',
    ingredients: [
      '6 კვერცხის გული',
      '2 ჩაის ჭიქა შაქარი',
      '200 გრამი ცხიმი გამდნარი',
      '2 ჭიქა მაწონი',
      'სოდა ძმრით',
      'ფქვილი ზომა ნაზი (გავყოთ 4 ნაწილად, ვაცხობთ ცხიმწასმულ კალკაზე)',
    ],
    description:
        '6 კილოგრამი ცილა, 1 ჩაის ჭიქა შაქარი გავაკეთოთ ბეზე, 4-5 ვაშლი გახეხილი, 1 ლიმონი გახეხილი, მოხარშული კრემი ნახევარი ლიტრი.',
  ),
  Recipe(
    title: 'მინანქარი',
    ingredients: [
      '1 ჭიქა შაქარი',
      '3 კოვზი კაკაო',
      '1 კოვზი რძე',
      '100 გრამი ცხიმი',
      '1 სუფრის კოვზი ზეთი',
    ],
    description:
        '2 ადგილზე კრემი, ერთ ადგილზე ბეზე, ზევიდან მინანქარი. კრემი: მოხარშული ნახ. ლიტ. ნახ. ჭ. პურისფქვილი, 1 ჭიქა შაქარი.',
  ),
  Recipe(
    title: 'ნამცხვარი "მერ"',
    ingredients: [
      'კვერცხი _ 10',
      'ჭიქა შაქარი _ 3.5',
      'ცხიმი გამდნარი და გაცივებული _ 200 გრამი',
      'მაწონი _ 1 ქილა',
    ],
    description:
        '2 სუფრის კოვზი სოდა, ცოტა მარილი, ვუშვებით კაკაოს გაცივებამდე, 2 ც. ვანილი, ფქვილი _ 4-6 ჭიქამდე, 2 ფენა + მესამე მოსაყრელად.',
  ),
  Recipe(
    title: 'კრემი',
    ingredients: [
      '2ც სგუშონი _ მოხარშული',
      '400 გრამი ცხიმი',
      'ყავა 2 სუფრის კოვზი',
    ],
  ),
  Recipe(
    title: 'ჩიტის რძე',
    ingredients: [
      '10 კვერცხის გული',
      '2.5 ჭიქა შაქარი',
      'ნახევარი ბანკა მაწონი',
      '1 ჩაის კოვზი სოდა',
      'პურის ფქვილი თვალით',
    ],
    extraSections: [
      RecipeSection(
        title: 'ბეზე',
        ingredients: [
          '10 კვ. ცილა',
          '2 ჭ. შაქარი',
        ],
      ),
      RecipeSection(
        description: 'გამომცხვარ გულზე დავაჯენთ ბეზეს და დავასხამთ მინანქარს.',
      )
    ],
  ),
  Recipe(
    title: 'პასკა (1 პორცია)',
    ingredients: [
      '20 ცალი კვერცხი',
      '1 კილოგრამი შაქარი + 1 ჭიქა მაწონი ან სმეტანა',
      '1 პაჩკა დროჟი',
      '2 ცალი მარგარინი',
      '3 კაკალი ილი, ჯაოზი 1 ჩ.კ.',
      '1.5 ლიტრი რძე',
      '3 ცალი ვანილი + 3 ცალი ლიმონი',
      '4.5 კგ პურის ფქვილი',
      '2 ჭიქა ზეთი',
      '2 პ. ქიშმიში',
    ],
    extraSections: [
      RecipeSection(
        title: '1 ეტაპი',
        description:
            'დროჟი 1 ლიტრი რძე და 1 ჭიქა შაქარი. ამოვიყვანოთ. ცოტა ფქვილი რომ ამოვა + დანარჩენი რძე გამდნარი მარგარინი + კარგად გათქვეფილი კვერცხი + მაწონი და დანარჩენი მოვცომოთ დარჩენილი ფქვილით + ქიშმიში მესამედ ჩავდებთ.',
      )
    ],
  ),
  Recipe(
    title: 'ქადა',
    ingredients: [
      '2 პაჩკა მარგარინი',
      '1 ქილა მაწონი',
      '4 ცალი კვერცხი',
      'სოდა',
    ],
  ),
  Recipe(
    title: 'გული',
    ingredients: [
      '2 ჭიქა შაქარი',
      '2 ჭიქა პურის ფქვილი',
      '1 პ. მარგარინი',
    ],
  ),
  Recipe(
    title: 'სნიკერსი',
    ingredients: [
      '4 კვერცხის გული',
      '300 გრამი მარგარინი',
      '2 ჭიქა შაქარი',
      'სოდა ძმრით და ვანილი',
      'რასაც შეიზელს პურის ფქვილს (6-7ჭ)',
      'ბეზე: 8 კვერცხის ცილა + 3ჭ. შაქარი',
    ],
    extraSections: [
      RecipeSection(
        title: 'კრემი',
        ingredients: [
          '2ც. მოხარშული მალაკო',
          '500 გრამი კარაქი + ვანილი',
        ],
      )
    ],
    description:
        'მოვზილოთ ცომი + მასას გავყოფთ 3 ნაწილად. ცომი უნდა იყოს ფაფუკი. თითოეული გავაბრტყელოთ ფქვილოვანი ხელით ცალ-ცალკე თბილ ცხიმწასმულ ჟარონაზე. თავზე გადავუსვათ ასევე სამ ნაწილად გაყოფილი ბეზე და შევდგათ ძალიან დაბალ პარზე დაახლოებით 40 წუთი. მოვაყაროთ ნიგოზი ან მიწის თხილი. მოვასხათ მინანქარი. ფენებს დავაშხუროთ ოდნავ ძალიან ცოტა არაყი ან სპირტი.',
  ),
  Recipe(
    title: 'პასკა (II)',
    ingredients: [
      '10 კვერცხი',
      '1 კილოგრამი შაქარი',
      '300 გრამი კარაქი',
      'ნახევარი კილოგრამი მაწონი',
      'ნახევარი ლიტრი რძე',
      'ქიშმიში',
      '1 ჭიქა ზეთი',
      'ილი, ჯაოზი _ ვანილი',
      'ფქვილი 3 კილოგრამი',
      'წინასწარ საფუარი: 1 პ. დროჟი, 2 კოვზი შაქარი, 2 ჭ. ზეთი, ცოტა ფქვილი',
    ],
  ),
  Recipe(
    title: 'ნაპოლეონი',
    ingredients: [
      '10 ცალი კვერცხი',
      '2 პ. მარგარინი',
      'ცოტა მარილი',
      '1.5 ჭიქა წყალი',
      'პურისფქვილი მაგარი ცომი მოვცომოთ',
    ],
    description:
        '1 ცალი კვერცხი + 100 გრამი გამდნარი მარგარინი + 1.5 ჭიქა წყალი + მარილი + პურისფქვილი მოვცომთ მაგარი ცომი, გავაბრტყელოთ და გადავუსვათ მარგარინი, გადავკეცოთ და გავყოთ 3 ნაწილად + (0.5 მოსაფშ) შევდოთ მაცივარში 20 წთ შემდეგ კიდევ გავაბრტყელოთ 20 წუთი. კიდევ გავაბრყელოთ შევდოთ კიდევ 20 წუთი შემდეგ ცხელ ღუმელში გამოვაცხოთ.',
  ),
  Recipe(
    title: 'ტარტალეტკა',
    ingredients: [
      '3 კვერცხი',
      '3 ჭიქა შაქარი',
      '300 გრამი კარაქი',
      '6 ჭიქა ფქვილი',
      '1 ჩაის კოვზი სოდა + ძმარი',
    ],
  ),
  Recipe(
    title: 'იდიალი',
    ingredients: [
      '6 ცალი კვერცხი',
      '1 ჭიქა შაქარი',
      '3 ს.კ. თაფლი',
      '1 ჩ. ჭ ნიგოზი',
      '1 ჩ. კ. სოდა ძმრით',
      '2 ჩ. ჭ. ფქვილი',
    ],
    extraSections: [
      RecipeSection(
        title: 'II ფენა',
        description:
            'ცხელ ჟარონაზე ცხიმწასმულ კალკაზე, 300 გრამი კარაქი + 2 მოხარშული სგუშონი.',
      )
    ],
  ),
  Recipe(
    title: 'სამარხვო ნამცხვარი',
    ingredients: [
      '1.5 ჩ. ჭ. პავიდლო',
      '1.5 ჩ.ჭ. წყალი ან ლიმონათი',
      '1.5 ჩ.ჭ. შაქარი',
      '3 სტ/კ თაფლი',
      '1 ჩ.კ. სოდა ძმრით',
      'ნახევარი ჩ.ჭ. ზეთი',
      '4 ჩ.ჭ. პურის ფქვილი',
      'ვანილი',
      'იგივე მეორე ფენა',
    ],
  ),
  Recipe(
    title: 'ჟელატინი',
    description: '200 გრამი ჟელატინი დავალბოთ 4 ჩ/ჭ წყალში (2სთ).',
    extraSections: [
      RecipeSection(
        description:
            'ამ მასას გავყოფთ 3 ტოლ ნაწილად, პირველ ნაწილს + 3 ჩ/ჭ წყალი + 2.5 ჩ/ჭ შაქარი + ფრი არომატი + ვანილი წამოვადუღოთ დაბალ ცეცხლზე 2-3 წუთით.',
      ),
      RecipeSection(
        description: 'ასევე მომზადდება მეორე და მესამე ნაწილიც.',
      )
    ],
  ),
  Recipe(
    title: 'ფუნთუშა',
    ingredients: [
      '1 ჩ.ჭ. რძე',
      '1 ჩ.ჭ შაქარი',
      '10 გრამი დროჟი',
      '100 გრამი კარაქი (გამდნარი)',
      '2 ცალი კვერცხის გული',
      'ვანილი',
      'მარილი',
    ],
    description:
        'ფქვილი იმდენი, რომ ნაზი ცომი მივიღოთ.\n\nმომზადება: თბილ რძეში ჩავყაროთ დროჟი, 2ს.კ. შაქარი და ცოტა ფქვილი, დავაყოვნოთ 15 წუთი. შემდეგ გავუკეთოთ დანარჩენი ზემოთ ჩამოთვლილი ინგრედიენტები, ბოლოს შევაზილოთ ფქვილი, ზეთში მოვაგუნდავოთ და დავასვენოთ. კარგად რომ ამოვა, თავზე გადავუსვათ კვერცხის გული და ცოტა მაწონი ერთმანეთში გადარეული. გამოვაცხოთ 200 გრადუსზე დაახლოებით 20 წუთი.',
  ),
  Recipe(
    title: 'ზებრა',
    ingredients: [
      '6 ცალი კვერცხი',
      '2 ჭ. შაქარი',
      '1 პაჩკა (200 გრამი) კარაქი ან მარგარინი',
      '1 ქილა მაწონი',
      '1 ჩ.კ. სოდა',
      '5 ჭ. ფქვილი _ არაჟნის სისქის უნდა იყოს მასა',
      '0.25 გრამი კაკაო',
      'ცომი გაყავი შუაში - ნახევარს კაკაო უქენი, ნახევარი თეთრი',
      'ვანილი 2 ცალი',
    ],
  ),
  Recipe(
    title: 'კულიჩი',
    ingredients: [
      '10 კვერცხი',
      '1200 გრამი შაქარი',
      '3 კგ ფქვილი',
      'საფუარი ნახევარზე ცოტა მეტი',
      '1 ლიტრი რძე',
      '250 გრამი მარგარინი',
      '250 გრამი კარაქი',
      '1 ჭ. ზეთი',
      '300 გრამი შავი ქიშმიში',
      'ილი + ჯაოზი - 2-2 ლარის',
    ],
    description:
        'ნახევარი ლიტრა თბილ რძეში გახსენით საფუარი + 6 ს/კ შაქარი + 1 ჩ/კ შაქარი დავუმატოთ რომ კარგად აფუვდეს. მეორე ნახ/ლ თბილ რძეში გახსენით ცხიმი: მარგარინი, კარაქი, ზეთი.\n\nცალკე 10 კვერცხის ცილა კარგად ამოიყვანეთ + 10ს/კ შაქარი, მარილი მწიკვი და აურიეთ. 10 კვ. გულისგან და დარჩენილი შაქრისგან ვაკეთებთ გოგლი-მოგლს.\n\nცალკე 3 კგ ფქვილს + საფუარი + ცხიმი + კვერცხიანი მასა + დარჩენილი ნახ/ჭ ზეთი და მოზილეთ. ამოსასვლელად საჭიროა 6 სთ.',
    extraSections: [
      RecipeSection(
        description: 'დილით ჩაზილეთ + ქიშმიში, ილი, ჯაოზი.',
      ),
      RecipeSection(
        description:
            'ცომს ფორმაში ჩავდებთ, ვაჩერებთ 6 სთ. გამოვაცხოთ გახურებულ 150 გრადუსზე 1 საათის შემდეგ.',
      ),
    ],
  ),
  Recipe(
    title: 'პასკა (III)',
    ingredients: [
      '10ც. კვერცხი',
      '600 გრამი კარაქი',
      '1 ლიტრი რძე',
      '10 ცალი ვანილი',
      'ილი, ჯაოზი 2 ლარის',
      '3 კგ ფქვილი',
      '1 ჩ.ჭ. ზეთი',
      'შაქარი 9 ჩ.ჭ.',
      'ქიშმიში 300 გრამი',
      'დროჟი 1 პაჩკა',
    ],
    description:
        'ავიღებთ კვერცხს და შაქარს, ვთქვიფავთ. 600 გრამი კარაქი გამდნარი და გაგრილებული. 1 ჩ/ჭ ზეთი + (საფუარი: ნახ. ლ. რძეში გავქნით 1 პ. დროჟის) + რძე, პურისფქვილი, ილი, ჯაოზი + ვანილი და მოვცომავთ.',
  ),
  Recipe(
    title: 'ბრაუნი',
    ingredients: [
      '5 კვერცხი',
      '3 ჩ.ჭ. შაქარი',
      '3 კაკაო',
      '0.5 მაწონი',
      '3 ჩ/კ სოდა ძმრით',
      '9 ს/კ ზეთი',
      '2 ვანილი',
      '4 ჩ/ჭ ფქვილი (ნაწილად გავყოთ)',
    ],
    extraSections: [
      RecipeSection(
        title: 'კრემი',
        ingredients: [
          '2 მალაკო მოხარშული',
          '500 გრამი კარაქი',
          '2 კაკაო',
          '8 ს/კ შაქარი',
          '1 ვანილი',
        ],
        description: 'ადუღებამდე მივიყვანოთ.',
      )
    ],
  ),
  Recipe(
    title: 'ჩურჩხელა (200 ცალი)',
    ingredients: [
      '25 ლიტრა წვენი',
      '30 ჭ. მჭადისფქვილი',
      '2 ჭიქა ნახევარი პურისფქვილი',
      '3 სუფრის კოვზი ლიმონმჟავა',
    ],
  ),
  Recipe(
    title: 'ნამცხვარი (კაკლები)',
    ingredients: [
      '200 გრამი ოთახის ტემპერატურის კარაქი',
      '100 გრამი შაქრის პუდრა',
      'ვანილი',
      '2ც კვერცხი',
      'მარილი',
      '460 გრამი ფქვილი',
      '1 ჩ.კ. გამაფხვიერებელი',
    ],
    description: 'დავასვენოთ მაცივარში 30 წუთი.',
    extraSections: [
      RecipeSection(
        ingredients: ['1 ქილა მალაკო მოხარშული'],
      )
    ],
  ),
  Recipe(
    title: 'ცხვარი',
    ingredients: [
      'კვერცხი 3ცალი',
      'შაქარი 2 ჭიქა',
      'კარაქი 100 გრამი',
      'არაჟანი 200 გრამი',
      'ფქვილი 3 ჭიქა',
      'ქიშმიში',
      'ლიმონის ცედრა',
    ],
    description:
        'ავთქვიფოთ კვერცხი და შაქარი, შემდეგ დავუმატოთ არაჟანი, ვანილი, სოდა, კარაქი და ფქვილი, ბოლოს ქიშმიში ან ცუკატი, ასევე ლიმონის ცედრა. მოვასხათ ფორმაში და გამოვაცხოთ 150 გრადუსზე.',
  ),
  Recipe(
    title: 'ტარტის კრემი',
    ingredients: [
      '500 მლ. რძე',
      '3 ს/კ ფქვილი',
      '1 კვერცხი',
      'მწიკვი მარილი',
      'ვანილი',
      '150 გრამი შაქარი',
    ],
    description:
        'დაბალ ცეცხლზე მოვხარშოთ აღებიდან 2 წუთი, გავაცივოთ და დავამატოთ 100 გრამი კარაქი.',
  ),
];

// Placeholder items for future tabs
final List<Recipe> saucesList = [
  Recipe(
    title: 'აჯიკა',
    ingredients: ['წითელი წიწაკა', 'ნიორი', 'ხმელი სუნელი', 'მარილი'],
    description: 'ყველა ინგრედიენტი ერთად გატარდეს და აირიოს.',
  ),
  Recipe(
    title: 'ტყემალი',
    ingredients: ['ტყემალი', 'ომბალო', 'ქინძი', 'ნიორი', 'წიწაკა', 'მარილი'],
    description: 'ტყემალი მოვიხარშოთ, გავხეხოთ და დავუმატოთ სუნელები.',
  ),
];

final List<Recipe> preservesList = [
  Recipe(
    title: 'მურაბა',
    ingredients: ['ხილის სია', 'შაქარი'],
    description: 'მზადდება ტრადიციული წესით.',
  ),
];

// -----------------------------------------------------------------------------
// NAVIGATION / MAIN SCREEN
// -----------------------------------------------------------------------------

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<String> _titles = [
    'ნამცხვრები',
    'სოუსები',
    'შესანახები',
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      RecipeListPage(recipes: cakesList),
      RecipeListPage(recipes: saucesList),
      RecipeListPage(recipes: preservesList),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          _titles[_selectedIndex],
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFFD32F2F),
        unselectedItemColor: Colors.grey[600],
        selectedFontSize: 14,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarViewItem(
            icon: Icon(Icons.cake_outlined),
            activeIcon: Icon(Icons.cake),
            label: 'ნამცხვრები',
          ),
          BottomNavigationBarViewItem(
            icon: Icon(Icons.soup_kitchen_outlined),
            activeIcon: Icon(Icons.soup_kitchen),
            label: 'სოუსები',
          ),
          BottomNavigationBarViewItem(
            icon: Icon(Icons.inventory_2_outlined),
            activeIcon: Icon(Icons.inventory_2),
            label: 'შესანახები',
          ),
        ],
      ),
    );
  }
}

class BottomNavigationBarViewItem extends BottomNavigationBarItem {
  const BottomNavigationBarViewItem({
    required super.icon,
    super.activeIcon,
    required super.label,
  });
}

// -----------------------------------------------------------------------------
// RECIPE LIST PAGE
// -----------------------------------------------------------------------------

class RecipeListPage extends StatelessWidget {
  final List<Recipe> recipes;

  const RecipeListPage({super.key, required this.recipes});

  @override
  Widget build(BuildContext context) {
    if (recipes.isEmpty) {
      return const Center(
        child: Text('რეცეპტები ჯერ არ არის დამატებული.'),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      itemCount: recipes.length,
      itemBuilder: (context, index) {
        final recipe = recipes[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: ListTile(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            title: Text(
              recipe.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2C3E50),
              ),
            ),
            trailing: const Icon(
              Icons.chevron_right,
              color: Color(0xFFD32F2F),
              size: 28,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetailPage(recipe: recipe),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

// -----------------------------------------------------------------------------
// RECIPE DETAIL PAGE
// -----------------------------------------------------------------------------

class RecipeDetailPage extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailPage({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Photo Container
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.orange[50],
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.orange[200]!, width: 1.5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.add_a_photo_outlined,
                    size: 48,
                    color: Color(0xFFD32F2F),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'ფოტო (სურვილისამებრ)',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Primary Ingredients
            if (recipe.ingredients != null && recipe.ingredients!.isNotEmpty) ...[
              const Text(
                'ინგრედიენტები',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFD32F2F),
                ),
              ),
              const SizedBox(height: 12),
              ...recipe.ingredients!.map((item) => Padding(
                    padding: const EdgeInsets.only(bottom: 6.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '• ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFD32F2F),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 17,
                              height: 1.3,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              const SizedBox(height: 16),
            ],

            // Primary Description / Method
            if (recipe.description != null &&
                recipe.description!.isNotEmpty) ...[
              const Text(
                'როგორ მზადდება',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2C3E50),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                recipe.description!,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 20),
            ],

            // Extra Sub-sections (e.g., "II ფენა", "კრემი", "1 ეტაპი")
            if (recipe.extraSections != null)
              ...recipe.extraSections!.map((section) {
                return Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (section.title != null) ...[
                        Text(
                          section.title!,
                          style: TextStyle(
                            fontSize: section.title == '1 ეტაპი' ? 22 : 20,
                            fontWeight: FontWeight.bold,
                            color: section.title == '1 ეტაპი'
                                ? const Color(0xFFD32F2F)
                                : const Color(0xFF2C3E50),
                          ),
                        ),
                        const SizedBox(height: 8),
                      ],
                      if (section.ingredients != null)
                        ...section.ingredients!.map((ing) => Padding(
                              padding: const EdgeInsets.only(bottom: 6.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    '• ',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFD32F2F),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      ing,
                                      style: const TextStyle(
                                        fontSize: 17,
                                        height: 1.3,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      if (section.description != null) ...[
                        Text(
                          section.description!,
                          style: const TextStyle(
                            fontSize: 16,
                            height: 1.5,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 12),
                      ],
                    ],
                  ),
                );
              }),
          ],
        ),
      ),
    );
  }
}
