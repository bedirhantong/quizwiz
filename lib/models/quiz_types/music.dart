import '../questions/question.dart';
import '../quiz/quiz.dart';

class MusicQuiz {
  static Quiz turkishPopMusicQuiz = Quiz(
    quizName: 'Turkish Pop Music',
    numberOfQuestion: 10,
    imageString: 'imageString',
    questions: [
      Question(
        q: 'Tarkan, Turkish pop müziğinin önde gelen isimlerinden biridir.',
        a: true,
      ),
      Question(
        q: 'Sezen Aksu, "Türk Popunun Kraliçesi" olarak anılan bir sanatçıdır.',
        a: true,
      ),
      Question(
        q: 'Sıla, Türk pop müziğinin en çok albüm satan sanatçılarından biridir.',
        a: false,
      ),
      Question(
        q: 'Ajda Pekkan, sadece 90\'ların değil, 2000\'lerin de önemli pop yıldızlarından biridir.',
        a: true,
      ),
      Question(
        q: 'Kenan Doğulu, "Dombıra" adlı şarkısı ile ünlüdür.',
        a: false,
      ),
      Question(
        q: 'Türk pop müziğinin önemli temsilcilerinden biri olan Teoman, aynı zamanda başarılı bir rock müziği sanatçısıdır.',
        a: true,
      ),
      Question(
        q: 'Ajda Pekkan ve Sezen Aksu, müzik kariyerlerine aynı dönemde başlamışlardır.',
        a: false,
      ),
      Question(
        q: 'İrem Derici, "Kalbimin Tek Sahibine" adlı şarkısı ile tanınır.',
        a: true,
      ),
      Question(
        q: 'Hadise, Eurovision Şarkı Yarışması\'nda Türkiye\'yi temsil etmiştir.',
        a: true,
      ),
      Question(
        q: 'Türk pop müziğinin önemli isimlerinden biri olan Tarkan, "Cevriye" adlı dizide oyunculuk yapmıştır.',
        a: false,
      ),
    ],
  );

  static Quiz turkishAnatolianRockQuiz = Quiz(
    quizName: 'Turkish Anatolian Rock Music',
    questions: [
      Question(
        q: 'Barış Manço is considered one of the pioneers of Anatolian Rock music.',
        a: true,
      ),
      Question(
        q: 'Anatolian Rock is heavily influenced by Western rock music.',
        a: false,
      ),
      Question(
        q: 'Erkin Koray is known as the "Father of Turkish Rock Music."',
        a: true,
      ),
      Question(
        q: 'Ahmet Kaya was a prominent figure in Anatolian Rock music.',
        a: false,
      ),
      Question(
        q: 'Anatolian Rock often incorporates traditional Turkish folk melodies.',
        a: true,
      ),
      Question(
        q: 'Moğollar is a Turkish rock band that played a significant role in the Anatolian Rock movement.',
        a: true,
      ),
      Question(
        q: 'Anatolian Rock gained popularity in Turkey during the 1960s and 1970s.',
        a: true,
      ),
      Question(
        q: 'Fikret Kızılok is known for his contributions to Anatolian Rock music.',
        a: true,
      ),
      Question(
        q: 'The lyrics in Anatolian Rock songs often touch upon social and political issues.',
        a: true,
      ),
      Question(
        q: 'Anatolian Rock musicians were not influenced by Middle Eastern music styles.',
        a: false,
      ),
    ],
    numberOfQuestion: 10,
    imageString: 'imageString',
  );

  static Quiz turkishArtMusicQuiz = Quiz(
    quizName: 'Turkish Art Music',
    numberOfQuestion: 10,
    imageString: 'imageString',
    questions: [
      Question(
        q: 'Turkish art music is an integral part of Turkey\'s cultural heritage.',
        a: true,
      ),
      Question(
        q: 'Makam is a concept in Turkish art music that refers to melodic patterns.',
        a: true,
      ),
      Question(
        q: 'Saz is a Turkish stringed musical instrument.',
        a: true,
      ),
      Question(
        q: 'Sufi poetry has had a significant influence on Turkish art music.',
        a: true,
      ),
      Question(
        q: 'The "Divan-ı Hümâyun" is a famous Turkish art music composition.',
        a: false,
      ),
      Question(
        q: 'Turkish art music is exclusively performed with Western musical instruments.',
        a: false,
      ),
      Question(
        q: '"Türk Sanat Müziği" is the Turkish term for Turkish art music.',
        a: true,
      ),
      Question(
        q: 'Mehter music is an important genre within Turkish art music.',
        a: false,
      ),
      Question(
        q: 'The "Kudüm" is a type of Turkish percussion instrument.',
        a: true,
      ),
      Question(
        q: 'Turkish art music has a strong influence from Indian classical music.',
        a: false,
      ),
    ],
  );

  static Quiz dengbejQuiz = Quiz(
    quizName: 'Dengbej Culture Quiz',
    questions: [
      Question(
        q: 'Dengbej refers to a traditional Kurdish art form of storytelling through singing and playing musical instruments.',
        a: true,
      ),
      Question(
        q: 'Dengbej performances are typically solo acts and do not involve group performances.',
        a: false,
      ),
      Question(
        q: 'Dengbej songs often cover a wide range of topics including historical events, love stories, and nature.',
        a: true,
      ),
      Question(
        q: 'The term "Dengbej" comes from the Kurdish words "deng" meaning sound, and "bej" meaning master or chief.',
        a: true,
      ),
      Question(
        q: 'Dengbej is exclusively practiced in the Kurdish region of Turkey and has no presence in other cultures.',
        a: false,
      ),
      Question(
        q: 'Dengbej performers traditionally accompany their singing with instruments such as the saz, tembûr, or daf.',
        a: true,
      ),
      Question(
        q: 'Dengbej is considered solely as a form of entertainment and has no cultural or social significance.',
        a: false,
      ),
      Question(
        q: 'In modern times, Dengbej has faced challenges due to political and social factors, but efforts are being made to preserve and promote the art form.',
        a: true,
      ),
      Question(
        q: 'Dengbej performances are primarily recitations of poetry and do not involve musical elements.',
        a: false,
      ),
      Question(
        q: 'Dengbej has been recognized by UNESCO as an Intangible Cultural Heritage of Humanity.',
        a: true,
      ),
    ],
    numberOfQuestion: 10,
    imageString: 'imageString',
  );

  static Quiz kurdishSongsQuiz = Quiz(
    questions: [
      Question(
        q: 'Kurdish traditional songs are only sung in the Kurdish language.',
        a: false,
      ),
      Question(
        q: 'Kurdish traditional music often includes instruments such as the daf and tembûr.',
        a: true,
      ),
      Question(
        q: 'Kurdish traditional songs are mainly focused on modern pop themes.',
        a: false,
      ),
      Question(
        q: 'Kurdish traditional music has been influenced by various cultures and civilizations.',
        a: true,
      ),
      Question(
        q: 'Kurdish traditional songs are known for their melancholic and emotional themes.',
        a: true,
      ),
      Question(
        q: 'Kurdish traditional music is primarily composed using electronic synthesizers.',
        a: false,
      ),
      Question(
        q: 'Dengbêj, traditional Kurdish singers and storytellers, play an important role in preserving Kurdish musical heritage.',
        a: true,
      ),
      Question(
        q: 'Kurdish traditional songs are only performed in private gatherings and not in public events.',
        a: false,
      ),
      Question(
        q: 'Kurdish traditional music is limited to a single style and rhythm.',
        a: false,
      ),
      Question(
        q: 'The term "Kurdish traditional music" encompasses a wide variety of styles and genres.',
        a: true,
      ),
    ],
    quizName: 'Kurdish Traditional Songs Quiz',
    numberOfQuestion: 10,
    imageString: 'imageString',
  );
}
