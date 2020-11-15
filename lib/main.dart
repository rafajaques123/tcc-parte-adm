import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // retira a fitinha de debug
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.blueAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Administrador",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: null)
            ],
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          TopBar(),
        ],
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            height: 50,
            alignment: Alignment.bottomCenter,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Colors.white),
            height: MediaQuery.of(context).size.height - 200,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 40, right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Colaboradores"),
                      IconButton(icon: Icon(Icons.more_vert), onPressed: null)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext contexte, int index) {
                        return Container(
                          child: CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.blueAccent,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 28,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 140, left: 40, right: 40),
          child: Row(
            children: [
              Text("Perguntas recebidas"),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 160, right: 10, bottom: 10),
          child: Container(
            height: MediaQuery.of(context).size.height - 250,
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext contexte, int index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(35, 10, 20, 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Nome",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Inquisição: Aqui tem a prévia da pergunta das pessoas",
                                style: TextStyle(fontSize: 15),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("07:35"),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                }),
          ),
        )
      ],
    );
  }
}
