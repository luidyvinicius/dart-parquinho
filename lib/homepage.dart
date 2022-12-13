import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
                      SizedBox(
                        width: 200 * 0.8,
                        height: 200 * 0.25,
                        child: ElevatedButton(
                          autofocus: false,
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(13.0),
                                      side: BorderSide.none))),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                MdiIcons.facebook,
                                color: _colorG,
                              ),
                              Text(
                                "Facebook",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                    color: _colorG),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 20,
                      ),
                      SizedBox(
                        width: 200 * 0.8,
                        height: 200 * 0.25,
                        child: ElevatedButton(
                          autofocus: false,
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(13.0),
                                      side: BorderSide.none))),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                MdiIcons.google,
                                color: _colorG,
                              ),
                              Text(
                                "Google",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                    color: _colorG),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 60),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Não é cadastrado?"),
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
                  color: Color.fromARGB(255, 0, 223, 126),
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
                        SizedBox(
                          width: 410 * 0.8,
                          height: 200 * 0.25,
                          child: ElevatedButton(
                            autofocus: false,
                            child: Text(
                              "Entrar",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 0, 223, 126)),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(13.0),
                                        side: BorderSide.none))),
                            onPressed: () {},
                          ),
                        ),
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

// class Body extends StatefulWidget {
//   const Body({Key? key}) : super(key: key);

//   @override
//   _BodyState createState() => _BodyState();
// }

// class _BodyState extends State<Body> {
//   final controller = TextEditingController();
//   final list = <String>[];
//   @override
//   Widget build(BuildContext context) {
//     return Column(children: [
//       Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: [
//             Expanded(
//                 child: TextField(
//               controller: controller,
//             )),
//             IconButton(
//                 onPressed: () {
//                   final text = controller.text;
//                   setState(() {
//                     list.add(text);
//                   });
//                   controller.clear();
//                 },
//                 icon: const Icon(
//                   Icons.send,
//                   color: Colors.blue,
//                 ))
//           ],
//         ),
//       ),
//       Expanded(
//         child: ListView.builder(
//             itemCount: list.length,
//             itemBuilder: (context, index) {
//               final item = list[index];
//               return ListTile(
//                 title: Text(item),
//               );
//             }),
//       )
//     ]);
//   }
// }
