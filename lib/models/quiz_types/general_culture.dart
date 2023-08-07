import '../questions/question.dart';
import '../quiz/quiz.dart';

class GeneralCulture {
  static Quiz artQuiz = Quiz(
    quizName: 'Art Quiz',
    numberOfQuestion: 10,
    imageString: 'imageString',
    questions: [
      Question(
        q: 'Leonardo da Vinci painted the Mona Lisa.',
        a: true,
      ),
      Question(
        q: 'Vincent van Gogh is famous for painting "Starry Night."',
        a: true,
      ),
      Question(
        q: 'The sculpture "David" was created by Michelangelo.',
        a: true,
      ),
      Question(
        q: 'Pablo Picasso is known for his contributions to the Surrealist movement.',
        a: false,
      ),
      Question(
        q: 'The "Sistine Chapel Ceiling" was painted by Raphael.',
        a: false,
      ),
      Question(
        q: 'Jackson Pollock was a prominent figure in Abstract Expressionism.',
        a: true,
      ),
      Question(
        q: 'The "Girl with a Pearl Earring" is a famous painting by Johannes Vermeer.',
        a: true,
      ),
      Question(
        q: 'The Louvre Museum is located in London.',
        a: false,
      ),
      Question(
        q: 'Frida Kahlo was a Mexican painter known for her self-portraits.',
        a: true,
      ),
      Question(
        q: 'The sculpture "The Thinker" was created by Auguste Rodin.',
        a: true,
      ),
    ],
  );

  static Quiz engineeringQuiz = Quiz(
    quizName: 'Engineering Quiz',
    numberOfQuestion: 10,
    imageString: 'imageString',
    questions: [
      Question(
        q: 'The Eiffel Tower is made of iron.',
        a: true,
      ),
      Question(
        q: 'Ohm\'s Law relates current, voltage, and resistance.',
        a: true,
      ),
      Question(
        q: 'A concave lens diverges light rays.',
        a: true,
      ),
      Question(
        q: 'The main unit of pressure is Pascal (Pa).',
        a: true,
      ),
      Question(
        q: 'Sound travels faster in water than in air.',
        a: true,
      ),
      Question(
        q: 'An anemometer measures pressure.',
        a: false,
      ),
      Question(
        q: 'A galvanometer measures electric current.',
        a: true,
      ),
      Question(
        q: 'The atomic number of carbon is 6.',
        a: true,
      ),
      Question(
        q: 'The Great Wall of China is visible from space.',
        a: false,
      ),
      Question(
        q: 'A joule is a unit of power.',
        a: false,
      ),
    ],
  );

  static Quiz mathQuiz = Quiz(
    quizName: 'Math Quiz',
    numberOfQuestion: 10,
    imageString: 'imageString',
    questions: [
      Question(
        q: 'The square root of 64 is 8.',
        a: true,
      ),
      Question(
        q: 'Pi (π) is an irrational number.',
        a: true,
      ),
      Question(
        q: 'Multiplying a number by zero always results in zero.',
        a: true,
      ),
      Question(
        q: 'The sum of the angles in a triangle is 180 degrees.',
        a: true,
      ),
      Question(
        q: '2 + 2 equals 5.',
        a: false,
      ),
      Question(
        q: 'The hypotenuse is the longest side of a right triangle.',
        a: true,
      ),
      Question(
        q: 'Every prime number is an odd number.',
        a: true,
      ),
      Question(
        q: 'The area of a circle is given by the formula A = πr².',
        a: true,
      ),
      Question(
        q: 'Parallel lines intersect at one point.',
        a: false,
      ),
      Question(
        q: 'The absolute value of a negative number is positive.',
        a: true,
      ),
    ],
  );

  static Quiz scienceQuiz = Quiz(
    quizName: 'Science Quiz',
    numberOfQuestion: 10,
    imageString: 'imageString',
    questions: [
      Question(
        q: 'The Earth is flat.',
        a: false,
      ),
      Question(
        q: 'The process of photosynthesis occurs only in animals.',
        a: false,
      ),
      Question(
        q: 'The speed of light is faster than the speed of sound.',
        a: true,
      ),
      Question(
        q: 'Water boils at 100 degrees Fahrenheit (212 degrees Celsius) at sea level.',
        a: false,
      ),
      Question(
        q: 'Gravity is stronger on the Moon than on Earth.',
        a: false,
      ),
      Question(
        q: 'Human beings evolved from chimpanzees.',
        a: false,
      ),
      Question(
        q: 'Electrons are larger than atoms.',
        a: false,
      ),
      Question(
        q: 'Diamonds are formed from compressed coal.',
        a: false,
      ),
      Question(
        q: 'Vaccines cause autism.',
        a: false,
      ),
      Question(
        q: 'All matter consists of atoms.',
        a: true,
      ),
    ],
  );

  static Quiz historyQuiz = Quiz(
    quizName: 'History Quiz',
    questions: [
      Question(
        q: 'The Declaration of Independence was adopted in 1776.',
        a: true,
      ),
      Question(
        q: 'The French Revolution took place in the 18th century.',
        a: true,
      ),
      Question(
        q: 'The Great Wall of China was built to keep out invaders from the south.',
        a: false,
      ),
      Question(
        q: 'World War II ended in 1945.',
        a: true,
      ),
      Question(
        q: 'The Renaissance originated in France.',
        a: false,
      ),
      Question(
        q: 'Nelson Mandela was the first black President of South Africa.',
        a: true,
      ),
      Question(
        q: 'The Industrial Revolution began in the 19th century.',
        a: true,
      ),
      Question(
        q: 'The Cold War was a military conflict between the United States and Germany.',
        a: false,
      ),
      Question(
        q: 'The ancient city of Rome was founded in the 8th century BC.',
        a: true,
      ),
      Question(
        q: 'The United Nations was established after World War I.',
        a: false,
      ),
    ],
    numberOfQuestion: 10,
    imageString: '',
  );
}
