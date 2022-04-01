import 'package:flutter/material.dart';

class RoundedTextButton extends StatelessWidget {
  const RoundedTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(
                const Size.fromHeight(100),
              ),
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    side: BorderSide(
                      color: Colors.black,
                      width: 1,
                    )),
              )),
        ),
      ),
      child: TextButton(
        onPressed: () {},
        child: const Text('TextButton'),
      ),
    );
  }
}
