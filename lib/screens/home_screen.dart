
import 'package:flutter_barcode_scanner/screens/list_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/screens/scan_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen>   {
  @override
  Widget build(BuildContext context) {
    return Container(
      // add Container widget as the parent of the Scaffold widget
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.purple, Colors.blue]
          )
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
      appBar: AppBar(title: Text("CART_X"),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(

                icon: Icon(Icons.document_scanner_outlined),
              label: Text("| Scan"),
              onPressed: (){


                Navigator.push(context, MaterialPageRoute(builder: (context)=> ScanScreen())); // Redirect to Scan Page
              },
              style: ElevatedButton.styleFrom(
               padding: EdgeInsets.all(20.0),
                fixedSize: Size(220, 60),
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                elevation: 30,
                shadowColor: Colors.black,
                side:  BorderSide(color: Colors.black, width: 2),
                shape: StadiumBorder()
                  ),
                ),

            SizedBox(
              width: 200,
              height: 40,
            ),

            ElevatedButton.icon(

              icon: Icon(Icons.add_shopping_cart_rounded),
              label: Text("| Cart"),
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20.0),
                  fixedSize: Size(220, 60),
                  textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  elevation: 30,
                  shadowColor: Colors.black,
                  side:  BorderSide(color: Colors.black, width: 2),
                  shape: StadiumBorder()
              ),
            ),


            SizedBox(
              width: 200,
              height: 40,
            ),


            ElevatedButton.icon(

              icon: Icon(Icons.location_on_outlined),
              label: Text("| Location"),
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20.0),
                  fixedSize: Size(220, 60),
                  textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  elevation: 30,
                  shadowColor: Colors.black,
                  side:  BorderSide(color: Colors.black, width: 2),
                  shape: StadiumBorder()
              ),
            ),

            SizedBox(
              width: 200,
              height: 40,
            ),


            ElevatedButton.icon(

              icon: Icon(Icons.search),
              label: Text("| Search"),
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20.0),
                  fixedSize: Size(220, 60),
                  textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  elevation: 30,
                  shadowColor: Colors.black,
                  side:  BorderSide(color: Colors.black, width: 2),
                  shape: StadiumBorder()
              ),
            ),

            SizedBox(
              width: 200,
              height: 40,
            ),


            ElevatedButton.icon(

              icon: Icon(Icons.format_list_bulleted_sharp),
              label: Text("| Pre-List"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ListHome()));

              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20.0),
                  fixedSize: Size(220, 60),
                  textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  elevation: 30,
                  shadowColor: Colors.black,
                  side:  BorderSide(color: Colors.black, width: 2),
                  shape: StadiumBorder()
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}