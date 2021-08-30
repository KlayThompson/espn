import 'package:flutter/cupertino.dart';

class ActivityLoading extends StatelessWidget {
  const ActivityLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoActivityIndicator(
        radius: 15,
      ),
    );
  }
}
