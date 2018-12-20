import 'package:FlutterWidgets/model/Router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RouterListView {
  List<Router> items;

  RouterListView(this.items);

  Widget build() {
    return ListView.separated(
        itemCount: items != null ? items.length : 0,
        itemBuilder: (context, index) {
          return _buildRow(context, items[index]);
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 0.5,
            indent: 16,
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
        child: Text(
          item.title,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
