import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  final String title;
  HomePage({Key key, this.title}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }

}

class _HomePageState extends State<HomePage>{
  int _counter = 0;
  void _pushClick(){
    setState(() {
      _counter = _counter + 2;
    });
}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      appBar: AppBar(
//        title: Text(widget.title),
//      ),
      body: Container(
          width: double.infinity,
//          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/beverage.jpg"),
              fit: BoxFit.cover,
            )
          ),
          child: Stack(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(bottom: Radius.zero, top: Radius.circular(30)),
                        color: Colors.white,
                      ),
                      width: double.infinity,
                      height: 450,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30, bottom: 70),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Solo Bakery Beverage',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple,
                                  fontSize: 36
                              ),
                            ),
//                    Text(
//                      'Beverage',
//                      style: TextStyle(
//                          fontWeight: FontWeight.bold,
//                          color: Colors.deepPurple,
//                          fontSize: 36
//                      ),
//                    ),
                            Text(
                              'Quezon City \n 5 Nov 2019',
                              style:  TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple,
                                  fontSize: 16
                              ),
                            ),
                            Text(
                              'Konsep tempat ini memang seperti itu yang mana akan membuat pengunjung dapat lebih banyak menghabiskan waktu untuk nongkrong, berbumpul, bersantai, brediskusi dan mengobrol satu sama lain',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 16
                              ),
                            ),
                          ],
                        ) ,
                      )
                  ),
                ],
              ),
              Positioned(
                bottom: 420,
                left: 100,
                right: 250,
                height: 60,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("assets/images/beverage.jpg"),
                        fit: BoxFit.fill,
                      )
                  ),
                        ),
              ),
              Positioned(
                bottom: 15,
                left: 0,
                right: 0,
                height: 50,
                child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Beli Tiket',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: _pushClick,
                    color: Colors.orange,
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                ),
              ),
            ],
          ),
        ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _pushClick,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ),
    );
  }

}