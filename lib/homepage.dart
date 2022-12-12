import 'package:flutter/material.dart';

import 'bottomNavigationBar.dart';
import 'dialogBox.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 4, 0),
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // SizedBox(
            //   height: MediaQuery.of(context).size.height,
            //   width: MediaQuery.of(context).size.width,
            //   child: Image.network(
            //       fit: BoxFit.cover,
            //       "https://static.vecteezy.com/ti/vetor-gratis/p3/5532042-sem-fundo-psicodelico-desenhado-a-mao-vetor.jpg"),
            // ),
            SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                    fit: BoxFit.cover, 'assets/image/fundoHome.jpg')),
            Container(
              color: Colors.black.withOpacity(0.50),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              color: Colors.green,
              height: 70,
              width: 70,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const MyStatefulWidget(),
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
