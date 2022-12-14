import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.colorG,
    required this.icone,
    required this.nomeBotao,
  });

  final Color colorG;
  final IconData icone;
  final String nomeBotao;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200 * 0.8,
      height: 200 * 0.25,
      child: ElevatedButton(
        autofocus: false,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.0),
                    side: BorderSide.none))),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              icone,
              color: colorG,
            ),
            Text(
              nomeBotao,
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w800, color: colorG),
            ),
          ],
        ),
      ),
    );
  }
}
