import 'package:flutter/material.dart';
import 'package:flutter_movie_db/src/provider/count_provider.dart';
import 'package:provider/provider.dart';

class ViewCountWidget extends StatelessWidget {
  const ViewCountWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Consumer<CountProvider>(
        builder: (context, provider, child) {
          return Text(
            Provider.of<CountProvider>(context).count.toString(),
            style: TextStyle(fontSize: 80),
          );
        },
      ),
    );
  }
}
