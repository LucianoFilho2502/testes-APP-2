import 'package:aula6b/model/profile.dart';
import 'package:aula6b/widgets/mybottomnavigation.dart';
import 'package:aula6b/widgets/mycard.dart';
import 'package:aula6b/widgets/mydrawer.dart';
import 'package:aula6b/widgets/mystory.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
    //Criando lista de dados
  List<Profile> listaDados = [
    Profile(name: "MrBeast", image:"https://i.scdn.co/image/ab67616d00001e02b21a44be65b9cf61d2e5e9a6", like: true),
    Profile(name: "Shadow", image: "https://media.tenor.com/efZQNgR1dc8AAAAe/absolute-cinema.png", like: false),
    Profile(name: "Darth Comprar", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1W1PDO-58K_izcb2bxWG7yvPotrNn4_2UTw&s", like: true),
    Profile(name: "Homer", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzKZFllAffg0k1P3gLla5oujYH-6NGLHRUgg&s", like: false),
    Profile(name: "Mordecai", image: "https://pbs.twimg.com/media/FZQmd60XEAA1_o2.png", like: true)
  ];
MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Piraflix"),
        backgroundColor: const Color.fromARGB(255, 185, 22, 250),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:listaDados.length,
                itemBuilder: (context, item) {
                  return MyStory(title:
                  listaDados[item].name,
                  image: listaDados[item].image,
                  );
                }
              ),
            ),

            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listaDados.length,
                itemBuilder: (context, item) {
                  return MyCard(
                    title: listaDados[item].name,
                     image: listaDados[item].image,
                      like: listaDados[item].like
                      );
                }
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigation(),
    );
  }
}