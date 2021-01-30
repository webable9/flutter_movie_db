import 'package:flutter/material.dart';
import 'package:flutter_movie_db/src/component/view_count.dart';
import 'package:flutter_movie_db/src/provider/count_provider.dart';
import 'package:provider/provider.dart';

class CountHomeWidget extends StatelessWidget {
  CountHomeWidget({Key key}) : super(key: key);
  CountProvider _countProvider;

  @override
  Widget build(BuildContext context) {
    _countProvider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Count Provider"),
      ),
      body: ViewCountWidget(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              _countProvider.add();
            },
          ),
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {
              _countProvider.remove();
            },
          )
        ],
      ),
    );
  }
}
