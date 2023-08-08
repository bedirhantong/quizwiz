import '../questions/question.dart';
import '../quiz/quiz.dart';

class TouristicKnowledgeTypeQuiz {
  static Quiz antalyaTourismQuiz = Quiz(
    quizName: 'Antalya Tourism',
    numberOfQuestion: 10,
    imageString: 'imageString',
    questions: [
      Question(
        q: 'Antalya is a coastal city in Turkey.',
        a: true,
      ),
      Question(
        q: 'Antalya is famous for its beautiful beaches.',
        a: true,
      ),
      Question(
        q: 'The ancient city of Perge is located near Antalya.',
        a: true,
      ),
      Question(
        q: 'Aspendos Theater in Antalya is an ancient Roman amphitheater.',
        a: true,
      ),
      Question(
        q: 'Antalya has a Mediterranean climate with mild winters and hot summers.',
        a: true,
      ),
      Question(
        q: 'Antalya is known for its vibrant nightlife.',
        a: true,
      ),
      Question(
        q: 'Termessos, an ancient city in the mountains near Antalya, was built by the Greeks.',
        a: false,
      ),
      Question(
        q: 'Düden Waterfalls are located only in Side, not in Antalya.',
        a: false,
      ),
      Question(
        q: 'Antalya is the capital city of Turkey.',
        a: false,
      ),
      Question(
        q: 'Kaleiçi is the historical center of Antalya with narrow streets and Ottoman-era architecture.',
        a: true,
      ),
    ],
  );

  static Quiz istanbulTourismQuiz = Quiz(
    quizName: 'Istanbul Tourism Quiz',
    numberOfQuestion: 10,
    imageString: 'imageString',
    questions: [
      Question(
        q: 'Istanbul is the capital city of Turkey.',
        a: false,
      ),
      Question(
        q: 'The Hagia Sophia was originally built as a church, then converted into a mosque, and is now a museum.',
        a: true,
      ),
      Question(
        q: 'The Bosphorus Strait divides Istanbul into two continents: Europe and Asia.',
        a: true,
      ),
      Question(
        q: 'The Topkapi Palace was the main residence of the Ottoman sultans for centuries.',
        a: true,
      ),
      Question(
        q: 'Taksim Square is located on the Asian side of Istanbul.',
        a: false,
      ),
      Question(
        q: 'The Blue Mosque is named after the blue tiles decorating its interior.',
        a: true,
      ),
      Question(
        q: 'Istanbul is the largest city in Turkey by population.',
        a: true,
      ),
      Question(
        q: 'The Grand Bazaar is one of the oldest and largest covered markets in the world.',
        a: true,
      ),
      Question(
        q: 'The Galata Tower offers panoramic views of Istanbul.',
        a: true,
      ),
      Question(
        q: 'The Dolmabahçe Palace is a 15th-century Ottoman palace located on the European side of Istanbul.',
        a: false,
      ),
    ],
  );

  static Quiz diyarbakirTourismQuiz = Quiz(
    quizName: 'Diyarbakır Tourism and Landmarks',
    questions: [
      Question(
        q: 'Diyarbakır is located in the eastern part of Turkey.',
        a: true,
      ),
      Question(
        q: 'The historical city walls of Diyarbakır are one of the UNESCO World Heritage Sites.',
        a: true,
      ),
      Question(
        q: 'The Tigris River flows through the city of Diyarbakır.',
        a: true,
      ),
      Question(
        q: 'Diyarbakır is famous for its traditional sweet called "cezerye."',
        a: true,
      ),
      Question(
        q: 'The Grand Mosque of Diyarbakır is also known as "Ulu Cami" in Turkish.',
        a: true,
      ),
      Question(
        q: 'Diyarbakır\'s city walls are the longest and best-preserved in the world.',
        a: true,
      ),
      Question(
        q: 'The Black Church is a famous landmark located in Diyarbakır.',
        a: false,
      ),
      Question(
        q: 'Hasankeyf, an ancient settlement near Diyarbakır, was submerged underwater due to a dam project.',
        a: true,
      ),
      Question(
        q: 'The "Dört Ayaklı Minare" (Four-Legged Minaret) is an iconic architectural structure in Diyarbakır.',
        a: true,
      ),
      Question(
        q: 'Diyarbakır is known for its rich cultural heritage but does not have any historical sites or ruins.',
        a: false,
      ),
    ],
    numberOfQuestion: 10,
    imageString: 'imageString',
  );

  static Quiz bingolTourismQuiz = Quiz(
    quizName: 'Bingöl Tourism',
    numberOfQuestion: 10,
    imageString: 'imageString',
    questions: [
      Question(
        q: 'Bingöl is known for its beautiful natural landscapes and mountains.',
        a: true,
      ),
      Question(
        q: 'Lake Çıldır is one of the prominent lakes in Bingöl.',
        a: false,
      ),
      Question(
        q: 'Mount Süphan is a dormant volcano located in Bingöl province.',
        a: true,
      ),
      Question(
        q: 'Bingöl is famous for its historical bazaars and ancient architecture.',
        a: false,
      ),
      Question(
        q: 'The Karlıova Ski Resort offers winter sports opportunities in Bingöl.',
        a: true,
      ),
      Question(
        q: 'Bingöl is not home to any national parks.',
        a: false,
      ),
      Question(
        q: 'The Murat River flows through the city of Bingöl.',
        a: true,
      ),
      Question(
        q: 'Bingöl is located in the eastern part of Turkey.',
        a: true,
      ),
      Question(
        q: 'The famous Bingöl Castle overlooks the city from a hilltop.',
        a: true,
      ),
      Question(
        q: 'Bingöl has a Mediterranean climate with hot and humid summers.',
        a: false,
      ),
    ],
  );

  static Quiz ankaraTourismQuiz = Quiz(
    quizName: 'Ankara Tourism',
    numberOfQuestion: 10,
    imageString: 'imageString',
    questions: [
      Question(
        q: 'Ankara is the capital city of Turkey.',
        a: true,
      ),
      Question(
        q: 'Ankara is located on the Mediterranean coast of Turkey.',
        a: false,
      ),
      Question(
        q: 'The historical site "Anıtkabir" is the mausoleum of the founder of the Turkish Republic, Mustafa Kemal Atatürk.',
        a: true,
      ),
      Question(
        q: 'The oldest and most well-preserved Hittite settlement in Anatolia, Hattusa, is located near Ankara.',
        a: true,
      ),
      Question(
        q: 'Ankara is famous for its stunning beaches and seaside resorts.',
        a: false,
      ),
      Question(
        q: 'The Atakule Tower offers panoramic views of Ankara and is a popular tourist attraction.',
        a: true,
      ),
      Question(
        q: 'The Temple of Augustus is a famous ancient Roman temple located in Istanbul.',
        a: false,
      ),
      Question(
        q: 'Ankara Castle is a historic castle located on a hilltop in the heart of the city.',
        a: true,
      ),
      Question(
        q: 'The Turkish State Opera and Ballet is headquartered in Ankara.',
        a: true,
      ),
      Question(
        q: 'The Kızılay Square is one of the central hubs of Ankara and is known for its shopping and dining options.',
        a: true,
      ),
    ],
  );

  static Quiz sirnakTourismQuiz = Quiz(
    quizName: 'Şırnak Tourism',
    numberOfQuestion: 10,
    imageString: 'imageString',
    questions: [
      Question(
        q: 'Şırnak is a coastal city in Turkey.',
        a: false,
      ),
      Question(
        q: 'Şırnak is known for its rich cultural heritage and historical sites.',
        a: true,
      ),
      Question(
        q: 'Mount Cudi, located in Şırnak, is a popular destination for hiking and nature enthusiasts.',
        a: true,
      ),
      Question(
        q: 'Şırnak has a Mediterranean climate with mild winters and hot summers.',
        a: false,
      ),
      Question(
        q: 'Hevsel Gardens, a UNESCO World Heritage Site, is located in Şırnak.',
        a: false,
      ),
      Question(
        q: 'Şırnak is famous for its traditional handicrafts, including rug weaving and pottery.',
        a: true,
      ),
      Question(
        q: 'Güzelsu Park is a well-known picnic spot in Şırnak, offering stunning views of the surrounding landscape.',
        a: true,
      ),
      Question(
        q: 'The Tigris River flows through Şırnak, providing opportunities for water-based activities.',
        a: true,
      ),
      Question(
        q: 'The historical Hasankeyf district, which is now submerged underwater due to a dam project, is located in Şırnak.',
        a: true,
      ),
      Question(
        q: 'Şırnak is primarily visited by tourists for its vibrant nightlife and modern entertainment venues.',
        a: false,
      ),
    ],
  );

  static Quiz mardinTourismQuiz = Quiz(
    quizName: 'Mardin Tourism and Beautiful Places',
    questions: [
      Question(
        q: 'Mardin is located in southern Turkey.',
        a: true,
      ),
      Question(
        q: 'Mardin is known for its unique architecture and historic stone houses.',
        a: true,
      ),
      Question(
        q: 'The Deyrulzafaran Monastery is a well-known religious site in Mardin.',
        a: true,
      ),
      Question(
        q: 'Mardin has a Mediterranean climate with cold winters and hot summers.',
        a: false,
      ),
      Question(
        q: 'Mardin is famous for its local cuisine, including dishes like "Mezze" and "Kibe" ',
        a: true,
      ),
      Question(
        q: 'The Mardin Castle offers panoramic views of the city and surrounding landscape.',
        a: true,
      ),
      Question(
        q: 'Mardin is located near the Black Sea.',
        a: false,
      ),
      Question(
        q: 'The city of Mardin has been a UNESCO World Heritage Site since 1999.',
        a: true,
      ),
      Question(
        q: 'The Great Mosque of Mardin is the oldest mosque in the city.',
        a: false,
      ),
      Question(
        q: 'Mardin is predominantly known for its modern skyscrapers.',
        a: false,
      ),
    ],
    numberOfQuestion: 10,
    imageString: 'imageString',
  );

  static Quiz luleburgazTourismQuiz = Quiz(
    quizName: 'Lüleburgaz Tourism',
    numberOfQuestion: 10,
    imageString: 'imageString',
    questions: [
      Question(
        q: 'Lüleburgaz is located in the European part of Turkey.',
        a: true,
      ),
      Question(
        q: 'Lüleburgaz is known for its historical Roman ruins.',
        a: false,
      ),
      Question(
        q: 'Lüleburgaz is situated near the Bulgarian border.',
        a: true,
      ),
      Question(
        q: 'The Tekirdağ Museum is a famous attraction in Lüleburgaz.',
        a: false,
      ),
      Question(
        q: 'The Stone Bridge is an iconic landmark in Lüleburgaz.',
        a: true,
      ),
      Question(
        q: 'Lüleburgaz has a vibrant nightlife with many clubs and bars.',
        a: false,
      ),
      Question(
        q: 'The Saray Cinema Museum is located in Lüleburgaz.',
        a: true,
      ),
      Question(
        q: 'The annual Lüleburgaz Cherry Festival celebrates the local cherry harvest.',
        a: true,
      ),
      Question(
        q: 'The Tırtar Wetland is an important natural area for bird watching in Lüleburgaz.',
        a: true,
      ),
      Question(
        q: 'The Lüleburgaz Castle is a well-preserved medieval fortress.',
        a: true,
      ),
    ],
  );

  static Quiz trabzonTourismQuiz = Quiz(
    quizName: 'Trabzon Tourism and Attractions',
    questions: [
      Question(
        q: 'Trabzon is located on the southern coast of Turkey.',
        a: false,
      ),
      Question(
        q: 'Uzungöl is a famous lake situated near Trabzon.',
        a: true,
      ),
      Question(
        q: 'Sumela Monastery is a historic Greek Orthodox monastery in Trabzon.',
        a: true,
      ),
      Question(
        q: 'Trabzon has a Mediterranean climate.',
        a: false,
      ),
      Question(
        q: 'Trabzon Castle is an ancient castle overlooking the Black Sea.',
        a: true,
      ),
      Question(
        q: 'Sümela Monastery is carved into the side of a cliff.',
        a: true,
      ),
      Question(
        q: 'Trabzon is known for its local tea production.',
        a: true,
      ),
      Question(
        q: 'Akçaabat is a district within Trabzon known for its delicious cuisine.',
        a: true,
      ),
      Question(
        q: 'Trabzon has no historical sites or landmarks to explore.',
        a: false,
      ),
      Question(
        q: 'Trabzon\'s Hagia Sophia Mosque is a famous historical attraction.',
        a: true,
      ),
    ],
    numberOfQuestion: 10,
    imageString: 'imageString',
  );
}
