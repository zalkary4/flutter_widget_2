import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoContextMenuWidget extends StatefulWidget {
  const CupertinoContextMenuWidget({Key? key}) : super(key: key);

  @override
  _CupertinoContextMenuWidgetState createState() =>
      _CupertinoContextMenuWidgetState();
}

class _CupertinoContextMenuWidgetState
    extends State<CupertinoContextMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: CupertinoContextMenu(
            actions: <Widget>[
              CupertinoContextMenuAction(
                child: const Text('Action one'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CupertinoContextMenuAction(
                child: const Text('Action two'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/YouTube_full-color_icon_%282017%29.svg/2560px-YouTube_full-color_icon_%282017%29.svg.png',
            ),
          ),
        ),
      ),
    );
  }
}
