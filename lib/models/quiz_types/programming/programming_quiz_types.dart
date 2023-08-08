import '../../questions/question.dart';
import '../../quiz/quiz.dart';

class ProgrammingQuizzes {
  static List<Quiz> programming = [
    flutterLangBasicsQuiz,
    kotlinLangBasicsQuiz,
    javaBasicsQuiz,
    cProgrammingQuiz,
    webProgrammingBasicsQuiz,
    androidBasicsQuiz,
    dotNetBasicsQuiz,
    cSharpBasicsQuiz,
    cyberSecurityBasicsQuiz
  ];

  static Quiz flutterLangBasicsQuiz = Quiz(
    quizName: 'Programming',
    numberOfQuestion: 10,
    imageString: 'imageString',
    questions: [
      Question(
          q: 'Flutter is an open-source UI software development kit developed by Google.',
          a: true),
      Question(
          q: 'Flutter applications only work on desktop computers.', a: false),
      Question(
          q: 'Dart programming language is the official language used for Flutter applications',
          a: true),
      Question(
          q: 'Flutter creates interfaces by combining elements called Widgets.',
          a: true),
      Question(
          q: 'Flutter can only be used to develop Android applications.',
          a: false),
      Question(
          q: 'Flutter\'s official logo is an Infinity symbol inside a blue circle.',
          a: true),
      Question(
          q: 'Flutter can only be published on the Google Play Store.',
          a: false),
      Question(
          q: 'Flutter doesn\'t provide any pre-built UI components.', a: false),
      Question(
          q: 'Hot Reload is a feature in Flutter that enables developers to see changes instantly without restarting the app.',
          a: true),
      Question(q: 'Flutter uses HTML for rendering UI elements.', a: false),
    ],
  );

  static Quiz kotlinLangBasicsQuiz = Quiz(
    quizName: 'Kotlin Programming',
    numberOfQuestion: 10,
    imageString: 'imageString',
    questions: [
      Question(
        q: 'Kotlin is a statically typed programming language developed by JetBrains.',
        a: true,
      ),
      Question(
        q: 'Kotlin is designed to fully replace Java in all use cases.',
        a: false,
      ),
      Question(
        q: 'Kotlin\'s syntax is very similar to JavaScript.',
        a: false,
      ),
      Question(
        q: 'Coroutines are a feature in Kotlin used for asynchronous programming.',
        a: true,
      ),
      Question(
        q: 'Kotlin has built-in null safety features to help prevent null pointer exceptions.',
        a: true,
      ),
      Question(
        q: 'Kotlin can be used to develop Android applications.',
        a: true,
      ),
      Question(
        q: 'Extension functions in Kotlin allow you to add new functions to existing classes without modifying their source code.',
        a: true,
      ),
      Question(
        q: 'In Kotlin, the "when" expression is used for pattern matching and replaces the switch statement in Java.',
        a: true,
      ),
      Question(
        q: 'Kotlin was officially released in 2016.',
        a: true,
      ),
      Question(
        q: 'In Kotlin, you can define a data class using the "data" keyword.',
        a: true,
      ),
    ],
  );

  static Quiz javaBasicsQuiz = Quiz(
    quizName: 'Java Programming',
    numberOfQuestion: 10,
    imageString: 'imageString',
    questions: [
      Question(
        q: 'Java is an object-oriented programming language.',
        a: true,
      ),
      Question(
        q: 'Java was originally developed by Microsoft.',
        a: false,
      ),
      Question(
        q: 'In Java, "String" is a primitive data type.',
        a: false,
      ),
      Question(
        q: 'Java programs are compiled into bytecode that runs on the Java Virtual Machine (JVM).',
        a: true,
      ),
      Question(
        q: 'Java supports multiple inheritance.',
        a: false,
      ),
      Question(
        q: 'The "public" keyword in Java is used to declare variables or methods that can be accessed from anywhere.',
        a: true,
      ),
      Question(
        q: 'Java provides automatic memory management through a process called "garbage collection".',
        a: true,
      ),
      Question(
        q: 'Java has built-in support for checked exceptions that must be either caught or declared in the method signature.',
        a: true,
      ),
      Question(
        q: 'Java has a built-in "interface" keyword to define a contract that a class must adhere to.',
        a: true,
      ),
      Question(
        q: 'Java applications can only run on Windows operating systems.',
        a: false,
      ),
    ],
  );

  static Quiz cProgrammingQuiz = Quiz(
    quizName: 'C Programming',
    numberOfQuestion: 10,
    imageString: 'imageString',
    questions: [
      Question(
        q: 'C is a high-level programming language.',
        a: false,
      ),
      Question(
        q: 'C was developed in the early 1970s.',
        a: true,
      ),
      Question(
        q: 'C is primarily used for system programming.',
        a: true,
      ),
      Question(
        q: 'Arrays in C are always 0-indexed.',
        a: true,
      ),
      Question(
        q: 'C has built-in garbage collection.',
        a: false,
      ),
      Question(
        q: 'Pointers in C allow direct memory manipulation.',
        a: true,
      ),
      Question(
        q: 'C supports object-oriented programming features.',
        a: false,
      ),
      Question(
        q: 'The "printf" function is used for printing output in C.',
        a: true,
      ),
      Question(
        q: 'C supports exception handling through try-catch blocks.',
        a: false,
      ),
      Question(
        q: 'C standard library provides functions for dynamic memory allocation using "malloc" and "free".',
        a: true,
      ),
    ],
  );

  static Quiz webProgrammingBasicsQuiz = Quiz(
    quizName: 'Web Programming Basics',
    numberOfQuestion: 10,
    imageString: 'imageString',
    questions: [
      Question(
        q: 'HTML stands for Hyper Text Markup Language.',
        a: true,
      ),
      Question(
        q: 'CSS is a programming language used for server-side scripting.',
        a: false,
      ),
      Question(
        q: 'JavaScript is a scripting language used for web development.',
        a: true,
      ),
      Question(
        q: 'HTTP stands for Hypertext Transfer Protocol.',
        a: true,
      ),
      Question(
        q: 'A URL is used to specify the location of a resource on the web.',
        a: true,
      ),
      Question(
        q: 'Responsive web design is an approach to design websites that adapt to various screen sizes.',
        a: true,
      ),
      Question(
        q: 'A web browser is a software application used to view and interact with websites.',
        a: true,
      ),
      Question(
        q: 'AJAX stands for Asynchronous JavaScript and XML, and it is used to create dynamic web applications.',
        a: true,
      ),
      Question(
        q: 'PHP is a client-side scripting language.',
        a: false,
      ),
      Question(
        q: 'Bootstrap is a popular CSS framework that helps with responsive web design.',
        a: true,
      ),
    ],
  );

  static Quiz androidBasicsQuiz = Quiz(
    quizName: 'Android Programming Basics',
    numberOfQuestion: 10,
    imageString: 'imageString',
    questions: [
      Question(
        q: 'Android is an open-source operating system primarily used for mobile devices.',
        a: true,
      ),
      Question(
        q: 'Android apps can only be developed using Java programming language.',
        a: false,
      ),
      Question(
        q: 'XML is commonly used to define the user interface in Android applications.',
        a: true,
      ),
      Question(
        q: 'The main building block for Android user interfaces is called "View".',
        a: true,
      ),
      Question(
        q: 'Activities are responsible for managing the app\'s user interface and interactions.',
        a: true,
      ),
      Question(
        q: 'Services are components that manage background tasks in Android.',
        a: true,
      ),
      Question(
        q: 'Intents are used for inter-component communication and navigation in Android.',
        a: true,
      ),
      Question(
        q: 'Android Studio is the official integrated development environment (IDE) for Android app development.',
        a: true,
      ),
      Question(
        q: 'Gradle is a build system used in Android projects to compile and manage dependencies.',
        a: true,
      ),
      Question(
        q: 'The "AndroidManifest.xml" file contains essential information about the app and its components.',
        a: true,
      ),
    ],
  );

  static Quiz dotNetBasicsQuiz = Quiz(
    quizName: '.NET Fundamentals',
    numberOfQuestion: 10,
    imageString: 'imageString',
    questions: [
      Question(
        q: 'C# is a programming language developed by Microsoft and commonly used in .NET development.',
        a: true,
      ),
      Question(
        q: '.NET Core is a cross-platform, open-source framework for building modern, cloud-based, and internet-connected applications.',
        a: true,
      ),
      Question(
        q: 'ASP.NET is used for building web applications using .NET.',
        a: true,
      ),
      Question(
        q: 'Entity Framework is an object-relational mapping (ORM) framework for .NET that simplifies database interaction.',
        a: true,
      ),
      Question(
        q: 'Visual Studio is the primary integrated development environment (IDE) used for .NET development.',
        a: true,
      ),
      Question(
        q: '.NET Standard is a specification that defines a set of APIs that all .NET platforms must implement.',
        a: true,
      ),
      Question(
        q: 'NuGet is a package manager used for managing and distributing .NET libraries.',
        a: true,
      ),
      Question(
        q: 'Garbage collection in .NET helps automatically manage memory by deallocating objects that are no longer needed.',
        a: true,
      ),
      Question(
        q: 'CLR (Common Language Runtime) is responsible for managing and executing .NET applications at runtime.',
        a: true,
      ),
      Question(
        q: 'WPF (Windows Presentation Foundation) is a framework for building desktop applications in .NET.',
        a: true,
      ),
    ],
  );

  static Quiz cSharpBasicsQuiz = Quiz(
    quizName: 'C# Programming Basics',
    numberOfQuestion: 10,
    imageString: 'imageString',
    questions: [
      Question(
        q: 'C# is a programming language developed by Microsoft.',
        a: true,
      ),
      Question(
        q: 'C# is primarily used for building web applications.',
        a: false,
      ),
      Question(
        q: 'In C#, variables must be explicitly declared with a data type.',
        a: true,
      ),
      Question(
        q: 'C# supports multiple inheritance.',
        a: false,
      ),
      Question(
        q: 'In C#, "int" is used to represent floating-point numbers.',
        a: false,
      ),
      Question(
        q: 'Object-oriented programming (OOP) is a key paradigm in C#.',
        a: true,
      ),
      Question(
        q: 'C# provides automatic garbage collection to manage memory.',
        a: true,
      ),
      Question(
        q: 'A method in C# can only return a single value.',
        a: false,
      ),
      Question(
        q: 'The "using" statement in C# is used for exception handling.',
        a: false,
      ),
      Question(
        q: 'C# applications can be compiled to run on multiple platforms, including Windows and Linux.',
        a: true,
      ),
    ],
  );

  static Quiz cyberSecurityBasicsQuiz = Quiz(
    quizName: 'Cyber Security Basics',
    numberOfQuestion: 10,
    imageString: 'imageString',
    questions: [
      Question(
        q: 'Phishing is a type of cyber attack where attackers trick individuals into revealing sensitive information.',
        a: true,
      ),
      Question(
        q: 'A strong password is usually short and simple to remember.',
        a: false,
      ),
      Question(
        q: 'Two-factor authentication (2FA) adds an extra layer of security by requiring users to provide two different authentication factors.',
        a: true,
      ),
      Question(
        q: 'Malware is a term used to describe physical security measures, not digital threats.',
        a: false,
      ),
      Question(
        q: 'Firewalls are used to protect computer networks from unauthorized access and attacks.',
        a: true,
      ),
      Question(
        q: 'Encryption is the process of converting readable data into unreadable data to prevent unauthorized access.',
        a: true,
      ),
      Question(
        q: 'Social engineering relies on manipulating individuals into performing actions or divulging confidential information.',
        a: true,
      ),
      Question(
        q: 'A strong cybersecurity strategy is only necessary for large corporations, not for individuals or small businesses.',
        a: false,
      ),
      Question(
        q: 'Regular software updates are not important for maintaining cybersecurity.',
        a: false,
      ),
      Question(
        q: 'Backing up data is not necessary because data loss is uncommon.',
        a: false,
      ),
    ],
  );
}
