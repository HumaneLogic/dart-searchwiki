// import 'dart:io';

// import 'package:http/http.dart' as http;

import 'package:command_runner/command_runner.dart';

const version = '3.10';
void main(List<String> arguments) async {
  var runner = CommandRunner();
  await runner.run(arguments);

  //   if (arguments.isEmpty || arguments.first == 'help') {
  //     printUsage();
  //   } else if (arguments.first == 'version') {
  //     print('dart version $version');
  //   } else if (arguments.first == 'wikipedia') {
  //     // if there is more input than just wikipedia word
  //     final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
  //     searchWiki(inputArgs); // no 'await' needed here for main
  //   } else {
  //     printUsage();
  //   }
}

// Since main doesn't need to do anything after searchWikipedia completes,
// you don't need to await it from main. Therefore main doesn't need to be async.

// void printUsage() {
//   print('enter commands: help, version search<ARTICLE-TITLE>');
// }

// void searchWiki(List<String>? arguments) async {
//   final String articleTitle;

//   // If the user didn't pass in arguments
//   if (arguments == null || arguments.isEmpty) {
//     print('please provide an article for searching the wikipedia');

//     // readLineSync() Awaits and reads the input from the user
//     // and returns the entire line as one string, so no join is needed
//     final inputFromStdin = stdin.readLineSync();

//     // if user input is empty or null(if the user presses Ctrl+C)
//     if (inputFromStdin == null || inputFromStdin.isEmpty) {
//       print('No article title provided. Exiting.');
//       return;
//     }
//     // if there is user input
//     articleTitle = inputFromStdin;
//   } else {
//     articleTitle = arguments.join(' ');
//   }

//   print('Looking up articles about "$articleTitle". Please wait.');

//   var articleContent = await getWikiArticle(articleTitle);
//   print(articleContent);
// }

// // api call and handle errors
// Future<String> getWikiArticle(String articleTitle) async {
//   final url = Uri.https(
//     'en.wikipedia.org',
//     '/api/rest_v1/page/summary/$articleTitle',
//   );

//   final response = await http.get(url);

//   if (response.statusCode == 200) {
//     return response.body;
//   }

//   return 'Error: Failed to fetch article "$articleTitle". status code: ${response.statusCode}';
// }
