import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:meu_app_inicial/components/loginButton.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _passWordVisible = true;
  var _colorG = Color.fromARGB(255, 0, 223, 126);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          //alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 1,
                        width: 60,
                        color: _colorG,
                      ),
                      Text(
                        "Entre com a conta do Facebook ou Google",
                        style: TextStyle(color: _colorG),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 1,
                        width: 60,
                        color: _colorG,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LoginButton(
                        colorG: _colorG,
                        icone: MdiIcons.facebook,
                        nomeBotao: "Facebook",
                      ),
                      Container(
                        width: 20,
                      ),
                      LoginButton(
                        colorG: _colorG,
                        icone: MdiIcons.google,
                        nomeBotao: "Google",
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Não é cadastrado?"),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Cadastre-se",
                            style: TextStyle(color: _colorG),
                          ),
                        )
                      ]),
                ),
              ],
            ),
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 2, 191, 109),
                        Color.fromARGB(255, 0, 223, 126),
                      ],
                      begin: FractionalOffset(0.0, 0.0),
                      end: FractionalOffset(0.0, 1.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(45),
                      bottomRight: Radius.circular(45))),
              height: 95 * 6,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100 * 1, left: 30),
                    child: Row(
                      children: const [
                        Text(
                          "Bem-vindo de volta ",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Icon(
                          MdiIcons.handWave,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10 * 1, left: 30),
                    child: Text(
                      "Estavamos ansiosos pelo seu retorno, \nvamos as compras?",
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 100, left: 25, right: 30),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: TextFormField(
                        style: const TextStyle(fontSize: 16),
                        decoration: const InputDecoration(
                          icon: Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 0, 223, 126),
                          ),
                          hintText: "Usuario",
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 0, 223, 126)),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 25, right: 30),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: TextFormField(
                        obscureText: _passWordVisible,
                        style: const TextStyle(fontSize: 16),
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                              color: const Color.fromARGB(255, 0, 223, 126),
                              icon: Icon(_passWordVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                // Update the state i.e. toogle the state of passwordVisible variable
                                setState(() {
                                  _passWordVisible = !_passWordVisible;
                                });
                              }),
                          icon: const Icon(
                            Icons.key,
                            color: Color.fromARGB(255, 0, 223, 126),
                          ),
                          hintText: "Senha",
                          hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 0, 223, 126)),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 25, right: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                            onTap: () {
                              print("pressionado");
                            },
                            child: const Text(
                              "Esqueceu a sua senha?",
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LoginButton(
                          colorG: _colorG,
                          icone: MdiIcons.login,
                          nomeBotao: "Entrar",
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
