import 'package:flutter/material.dart';
import 'package:flutter_basic/listData.dart';

void main() {
  runApp(const MyList());
}

class MyList extends StatelessWidget {
  const MyList({super.key});
  // final List<int> colorCode = <int>[700, 600, 500, 400, 300, 200, 100];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.white,
            // child: ListView(
            //   padding: const EdgeInsets.all(16),
            //   scrollDirection: Axis.horizontal,
            //   reverse: true,
            //   physics: const NeverScrollableScrollPhysics(),
            //   shrinkWrap: true,
            //   children: [
            //     Container(
            //       color: Colors.amber[700],
            //       height: 300,
            //       width: 300,
            //     ),
            //     Container(
            //       color: Colors.amber[500],
            //       height: 300,
            //       width: 300,
            //     ),
            //     Container(
            //       color: Colors.amber[300],
            //       height: 300,
            //       width: 300,
            //     )
            //   ],
            // ),
            // -- LIST BUILDER --
            // child: ListView.builder(
            //   padding: const EdgeInsets.all(10),
            //   itemCount: colorCode.length,
            //   itemBuilder: (BuildContext context, int index) {
            //     return Container(
            //       height: 100,
            //       color: Colors.amber[colorCode[index]],
            //     );
            //   },
            // ),
            // -- SEPARATED --
            // child: ListView.separated(
            //   padding: const EdgeInsets.all(10),
            //   itemCount: colorCode.length,
            //   itemBuilder: (BuildContext context, int index) {
            //     return Container(
            //       height: 100,
            //       color: Colors.amber[colorCode[index]],
            //     );
            //   },
            //   separatorBuilder: (BuildContext context, int index) {
            //     return const Divider();
            //   },
            // ),
            // -- LIST TILE --
            child: ListView.separated(
              padding: const EdgeInsets.all(10),
              itemCount: dataFromApi.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Image.network(dataFromApi[index]['url']!),
                  title: Text(dataFromApi[index]['text']!),
                  subtitle: Text(dataFromApi[index]['subtitle']!),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
            ),
          ),
        ),
      ),
    );
  }
}
