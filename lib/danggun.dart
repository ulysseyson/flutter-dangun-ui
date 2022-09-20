import 'package:flutter/material.dart';

class Danggun extends StatelessWidget {
  Danggun({super.key, required this.title});
  final String title;
  List<DangunTile> ItemList = const [
    DangunTile(name: "JBL"),
    DangunTile(name: "버즈"),
    DangunTile(name: "신발"),
    DangunTile(name: "신발"),
    DangunTile(name: "테니스라켓"),
    DangunTile(name: "가방"),
    DangunTile(name: "가방"),
    DangunTile(name: "향수"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("대치2동"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.draw),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      // body: ListView(
      //   children: const [
      //     DangunTile(),
      //     DangunTile(),
      //     DangunTile(),
      //     DangunTile(),
      //     DangunTile(),
      //   ],
      // ),
      body: ListView.builder(
        itemBuilder: ((context, index) => ItemList[index]),
        itemCount: ItemList.length,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: "홈"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.document_scanner,
                color: Colors.black,
              ),
              label: "동네생활"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.location_searching,
                color: Colors.black,
              ),
              label: "내 근처"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble,
                color: Colors.black,
              ),
              label: "채팅"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: "나의 당근"),
        ],
      ),
    );
  }
}

class DangunTile extends StatelessWidget {
  const DangunTile({required this.name, super.key});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.35,
          padding: EdgeInsets.all(10),
          child: Image.asset("assets/images/gorilla2.jpg"),
        ),
        Container(
            width: MediaQuery.of(context).size.width * 0.6,
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                const Text(
                  "역삼동 - 끌올 1분 전",
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
                const Text(
                  "145,000원",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(Icons.question_answer_outlined),
                    Text("6"),
                    Icon(Icons.favorite_border),
                    Text("3"),
                  ],
                )
              ],
            ))
      ],
    );
  }
}
