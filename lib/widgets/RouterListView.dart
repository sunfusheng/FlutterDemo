import 'package:FlutterWidgets/model/Router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RouterListView extends StatelessWidget {
  final List<Router> items;

  RouterListView(this.items);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: items != null ? items.length : 0,
        itemBuilder: (context, index) {
          return _buildRow(context, items[index]);
        },
        separatorBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Divider(height: 0.5),
          );
        });
  }

  Widget _buildRow(BuildContext context, Router item) {
    return InkWell(
      onTap: () {
        if (item.nextPage != null) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => item.nextPage));
        } else {
          Scaffold.of(context)
            ..removeCurrentSnackBar()
            ..showSnackBar(SnackBar(content: Text(item.title)));
        }
      },
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Text(
                item.title,
                style: TextStyle(fontSize: 18),
              ),
            ),
            item.nextPage != null ? Icon(Icons.chevron_right) : Text(''),
          ],
        ),
      ),
    );
  }
}
