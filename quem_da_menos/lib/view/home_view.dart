import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:transparent_image/transparent_image.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _buildBodyBack() => Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 94, 35, 117),
            Color.fromARGB(255, 228, 158, 255)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        );
    return Stack(
      children: <Widget>[
        _buildBodyBack(),
        CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text("Novidades"),
                centerTitle: true,
              ),
            ),
            Column(children: <Widget>[
              Flexible(
                child: SizedBox(
                  height: 280.0,
                  width: 420.0,
                  child: Carousel(
                    images: [
                      NetworkImage(
                          'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                      NetworkImage(
                          'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                    ],
                    dotSize: 4.0,
                    dotSpacing: 15.0,
                    dotColor: Colors.lightGreenAccent,
                    indicatorBgPadding: 8.0,
                    dotBgColor: Colors.purple.withOpacity(0.3),
                    borderRadius: true,
                    moveIndicatorFromBottom: 180.0,
                    noRadiusForIndicator: true,
                  ),
                ),
              ),
              Flexible(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                        height: 30.0,
                        width: 60.0,
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/bakery.png?alt=media&token=f61e448a-2bec-436b-beae-854a374bf784"),
                                fit: BoxFit.contain)),
                        child: SizedBox(
                            width: 200,
                            child: Card(
                                color: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                shadowColor: Colors.grey,
                                child: Text('Padaria')))),
                    Container(
                        height: 30.0,
                        width: 60.0,
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/basket.png?alt=media&token=926498e9-bb25-45bd-a45f-73cbaca9c3d3"),
                            )),
                        child: Card(
                            color: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            shadowColor: Colors.grey,
                            child: Text('Heyyyy'))),
                    Container(
                        height: 30.0,
                        width: 60.0,
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/chocolate.png?alt=media&token=5dfa5951-f51b-43fd-b0ea-67e3e97e8ec7"),
                            )),
                        child: Card(
                            color: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            shadowColor: Colors.grey,
                            child: Text('Heyyyy'))),
                    Container(
                        height: 30.0,
                        width: 60.0,
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/condiments.png?alt=media&token=6d8e3485-6b8f-4746-8496-a639879622d2"),
                            )),
                        child: Card(
                            color: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            shadowColor: Colors.grey,
                            child: Text('Heyyyy'))),
                    Container(
                        height: 30.0,
                        width: 60.0,
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/dairy-products.png?alt=media&token=8e3b3a84-2a51-4856-a4f0-e7d6a9ee58b2"),
                            )),
                        child: Card(
                            color: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            shadowColor: Colors.grey,
                            child: Text('Heyyyy'))),
                    Container(
                        height: 30.0,
                        width: 60.0,
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/drinks.png?alt=media&token=e372a075-bebd-4435-a735-7b605aae4101"),
                            )),
                        child: Card(
                            color: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            shadowColor: Colors.grey,
                            child: Text('Heyyyy'))),
                    Container(
                        height: 30.0,
                        width: 60.0,
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/fruit.png?alt=media&token=11912d7f-122e-48e0-9819-7aee76a4f563"),
                            )),
                        child: Card(
                            color: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            shadowColor: Colors.grey,
                            child: Text('Heyyyy'))),
                    Container(
                        height: 30.0,
                        width: 60.0,
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/higiene-dental.png?alt=media&token=48c50133-d4fd-46f3-8676-5fa529420bbc"),
                            )),
                        child: Card(
                            color: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            shadowColor: Colors.grey,
                            child: Text('Heyyyy'))),
                    Container(
                        height: 30.0,
                        width: 60.0,
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/liquor.png?alt=media&token=e4c92936-3af8-49dc-9857-dcea2e550a1b"),
                            )),
                        child: Card(
                            color: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            shadowColor: Colors.grey,
                            child: Text('Heyyyy'))),
                    Container(
                        height: 30.0,
                        width: 60.0,
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/meat.png?alt=media&token=b2bc2bf7-5dfa-4a86-aee5-a9c403855f93"),
                            )),
                        child: Card(
                            color: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            shadowColor: Colors.grey,
                            child: Text('Heyyyy'))),
                    Container(
                        height: 30.0,
                        width: 60.0,
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/pickles.png?alt=media&token=f132b3c5-6975-418e-9c1d-2c4133d5c528"),
                            )),
                        child: Card(
                            color: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            shadowColor: Colors.grey,
                            child: Text('Heyyyy'))),
                    Container(
                        height: 30.0,
                        width: 60.0,
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/rice.png?alt=media&token=04b80ff4-85cb-4699-bca8-2a1e1b1c9f49"),
                            )),
                        child: Card(
                            color: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            shadowColor: Colors.grey,
                            child: Text('Heyyyy'))),
                    Container(
                        height: 30.0,
                        width: 60.0,
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/seafood.png?alt=media&token=a1dee08b-098e-4381-83de-b2c16ae18131"),
                            )),
                        child: Card(
                            color: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            shadowColor: Colors.grey,
                            child: Text('Heyyyy'))),
                    Container(
                        height: 30.0,
                        width: 60.0,
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/snack.png?alt=media&token=6487b29e-ada4-4bc2-b50f-dc72c1605604"),
                            )),
                        child: Card(
                            color: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            shadowColor: Colors.grey,
                            child: Text('Heyyyy'))),
                    Container(
                        height: 30.0,
                        width: 60.0,
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/stationary.png?alt=media&token=7b36b7e3-3b97-4698-9814-571ac6d40c2a"),
                            )),
                        child: Card(
                            color: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            shadowColor: Colors.grey,
                            child: Text('Heyyyy'))),
                    Container(
                        height: 30.0,
                        width: 60.0,
                        padding: EdgeInsets.only(left: 60.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/quem-da-menos-69f6a.appspot.com/o/vegetable.png?alt=media&token=c679f090-e692-44b8-8ef5-d98a3dead76d"),
                            )),
                        child: Card(
                            color: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            shadowColor: Colors.grey,
                            child: Text('Heyyyy'))),
                  ],
                ),
              ),
              Flexible(
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text("He'd have you all unravel at the"),
                      color: Colors.teal[100],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Heed not the rabble'),
                      color: Colors.teal[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Sound of screams but the'),
                      color: Colors.teal[300],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Who scream'),
                      color: Colors.teal[400],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Revolution is coming...'),
                      color: Colors.teal[500],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Revolution, they...'),
                      color: Colors.teal[600],
                    ),
                  ],
                ),
              )
            ])
          ],
        )
      ],
    );
  }
}
