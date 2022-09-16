import 'package:flutter/cupertino.dart';

class CupertinoActionSheepWidget extends StatefulWidget {
  const CupertinoActionSheepWidget({
    super.key,
  });

  @override
  State<CupertinoActionSheepWidget> createState() =>
      _CupertinoActionSheepWidgetState();
}

class _CupertinoActionSheepWidgetState
    extends State<CupertinoActionSheepWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          child: const Text('CupertinoActionSheet'),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) => CupertinoActionSheet(
                title: const Text('Flutter mapp'),
                message: const Text('Your Message'),
                actions: <CupertinoActionSheetAction>[
                  CupertinoActionSheetAction(
                    child: const Text('Do something'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoActionSheetAction(
                    child: const Text('Do something else'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
