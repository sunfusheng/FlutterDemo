import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
          child: new RandomWords(),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RandomWordsState();
  }
}

class RandomWordsState extends State<RandomWords> {
  final _dataSource = <WordPair>[];
  final _font = const TextStyle(fontSize: 18);

  Widget _createListView() {
    return new ListView.builder(itemBuilder: (context, i) {
      if (i.isOdd) return new Divider();

      final index = i ~/ 2;
      if (index >= _dataSource.length) {
        _dataSource.addAll(generateWordPairs().take(10));
      }
      return _buildRow(_dataSource[index]);
    });
  }

  Widget _buildRow(WordPair pair) {
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _font,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _createListView();
  }
}
