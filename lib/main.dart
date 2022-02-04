import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Container(

                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2019/09/12/15/21/resort-4471852_960_720.jpg',

                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2017/07/10/10/02/globe-2489596_960_720.jpg',
                          width: 30,),
                      ),

                      Container(
                          padding: EdgeInsets.fromLTRB(20, 30, 0, 0),

                          child: Text(
                            'Welcome to MGM Resorts',
                            style: TextStyle(color: Colors.white70,
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0),
                          )),




                    ],
                  ),
                ],
              ),
              Container(

                alignment: Alignment.bottomCenter,
                child: Card(
                  margin: EdgeInsets.all(10),

                  child: ListTile(
                    onTap: (){

                    },
                    leading:  Icon(Icons.bed,color: Colors.deepPurple,),
                    title: Text('Book mynext page ',style: TextStyle(color: Colors.deepPurple,
                    ),),

                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Text('What can we Help you find?',style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 20
                  ),)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                  children:[
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.deepPurple,
                        height: 100,
                        width: 50,

                        margin: EdgeInsets.all(10),
                        child: Column(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(

                              child: Icon(Icons.dining,size: 40,color: Colors.white,),
                            ),
                            Container(
                                child:Text('Dining',style: TextStyle(
                                    fontSize: 15,color: Colors.white
                                ),)
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.deepPurple,
                        height: 100,
                        width: 50,

                        margin: EdgeInsets.all(10),
                        child: Column(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(

                              child: Icon(Icons.home_rounded,size: 40,color: Colors.white,),
                            ),
                            Container(
                                child:Text('Entertelment',style: TextStyle(
                                    fontSize: 15,color: Colors.white
                                ),)
                            ),
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.deepPurple,
                        height: 100,
                        width: 50,

                        margin: EdgeInsets.all(10),
                        child: Column(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(

                              child: Icon(Icons.door_back_door_rounded,size: 40,color: Colors.white,),
                            ),
                            Container(
                                child:Text('Check-In',style: TextStyle(
                                    fontSize: 15,color: Colors.white
                                ),)
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}
