import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Random Words Generator',
      theme: new ThemeData(
        primaryColor: Colors.white,
        primaryColorDark: Colors.white,
        primaryColorLight: Colors.white,
        accentColor: Colors.white,
      ),
      home: new RandomWords(),
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
  final _favors = new Set<WordPair>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Random Words Generator'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _gotoFavorsPage)
        ],
      ),
      body: _buildListView(),
    );
  }

  void _gotoFavorsPage() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
      final tiles = _favors.map((pair) {
        return new ListTile(
          title: new Text(
            pair.asPascalCase,
            style: _font,
          ),
        );
      });
      final items =
          ListTile.divideTiles(context: context, tiles: tiles).toList();

      return new Scaffold(
        appBar: new AppBar(
          title: new Text('Favourite Words'),
        ),
        body: new ListView(
          children: items,
        ),
      );
    }));
  }

  Widget _buildListView() {
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
    final isFavor = _favors.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _font,
      ),
      trailing: new Icon(
        isFavor ? Icons.favorite : Icons.favorite_border,
        color: isFavor ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (isFavor) {
            _favors.remove(pair);
          } else {
            _favors.add(pair);
          }
        });
      },
    );
  }
}
