import 'package:flutter/material.dart';

class BasicWidget extends StatelessWidget {
  const BasicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My first flutter App"),
        centerTitle: true,
      ),
      // body: Center(
      // child: Text(
      //   "My Centered Body",
      //   textAlign: TextAlign.left,
      //   style: TextStyle(
      //     fontSize: 32,
      //     fontFamily: 'Montserrat',
      //   ),
      // ),
      /**
       * How to use Image
       */
      // child: Image(
      // Get from internet
      //
      // image: NetworkImage('https://picsum.photos/300/300'),
      // Get from local
      //
      // image: AssetImage('assets/avatar.jpeg'),
      // ),
      //
      // Shorthand
      // child: Image.network('https://picsum.photos/300/300'),
      // child: Image.asset('assets/avatar.jpeg'),
      /**
       * How to use Icon
       */
      // child: Icon(
      //   Icons.airplanemode_active,
      //   color: Colors.greenAccent,
      //   size: 48,
      // ),
      /**
       * How to use Buttons
       */
      // child: ElevatedButton(
      //   child: Text("Click me!"),
      //   onPressed: () {
      //     // print("Elevated button clicked!");
      //   },
      //   // style: ButtonStyle(
      //   //   backgroundColor: MaterialStateProperty.all(Colors.black87),
      //   //   foregroundColor: MaterialStateProperty.all(Colors.greenAccent),
      //   // ),
      //   style: ElevatedButton.styleFrom(
      //     primary: Colors.black87,
      //     onPrimary: Colors.greenAccent,
      //   ),
      // ),
      // child: ElevatedButton.icon(
      //   icon: Icon(Icons.airplane_ticket_outlined),
      //   onPressed: () {},
      //   label: Text("Book this"),
      // ),
      // child: IconButton(
      //   onPressed: () {},
      //   icon: Icon(
      //     Icons.abc_rounded,
      //     color: Colors.amber,
      //     size: 120,
      //   ),
      // ),

      // ),
      /**
       * Container
       */
      // body: Container(
      //   color: Colors.green,
      //   child: Text("Hello there!"),
      //   /**
      //    * Padding property
      //    */
      //   // padding: EdgeInsets.all(12),
      //   padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      //   // margin: EdgeInsets.all(12),
      // ),
      /**
       * Padding Widget
       */
      // body: Padding(
      //   child: Text("hello"),
      //   padding: EdgeInsets.all(24.0),
      // ),
      /**
       * Row for multiple child
       */
      // body: Row(
      //   children: <Widget>[
      //     Text("This is my text"),
      //     TextButton(
      //       child: Text("My text button"),
      //       onPressed: () {},
      //     ),
      //     ElevatedButton(
      //       onPressed: () {},
      //       child: Padding(
      //         child: Text("My elevated button"),
      //         padding: EdgeInsets.symmetric(
      //           vertical: 24.0,
      //           horizontal: 0,
      //         ),
      //       ),
      //     )
      //   ],
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      // ),
      /**
       * Column
       */
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: Text("First child"),
            color: Colors.cyan,
            padding: EdgeInsets.all(
              24.0,
            ),
          ),
          Container(
            child: Text("Second child"),
            color: Colors.red,
            padding: EdgeInsets.all(
              28.0,
            ),
          ),
          Container(
            child: Text("Third child"),
            color: Colors.yellowAccent,
            padding: EdgeInsets.all(
              32.0,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("click"),
        onPressed: () {},
      ),
    );
  }
}
