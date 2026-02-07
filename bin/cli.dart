import 'dart:io';

const version = '3.10';
void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('dart version $version');
  } else if (arguments.first == 'search') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWiki(inputArgs);
  } else {
    printUsage();
  }
}

void printUsage() {
  print('enter commands: help, version search<ARTICLE-TITLE>');
}

void searchWiki(List<String>? arguments) {
  final String articleTitle;
  if (arguments == null || arguments.isEmpty) {
    print('please provide an article title');
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    articleTitle = arguments.join(' ');
  }
  print('Current article title $articleTitle');
}
