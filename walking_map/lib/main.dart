import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:walking_map/main.dart';
import 'package:latlong2/latlong.dart';
//import 'package:latlong/latlong.dart';

void main() {
  runApp(MapApp());
}

class MapApp extends StatefulWidget {
  
  @override
  _MapAppState createState() => new _MapAppState();
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'WalkingMap',
  //     theme: ThemeData(
  //       primarySwatch: Colors.blue,
  //     ),
  //     //home: const MyHomePage(title: 'Flutter Demo Home Page'),
  //     home: Scaffold(appBar: AppBar(title:'',),),
  //   );
  // }
}

class _MapAppState extends State<MapApp>{
  String _title = 'map_app';
  Widget build(BuildContext context){
    return MaterialApp(
      title:  'WalkingMap',
      theme: ThemeData(
        primarySwatch:  Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(_title),
          ),
        body: FlutterMap(
          options: MapOptions(
            center: LatLng(35.681, 139.767),
            zoom: 14.0,
          ),
          layers: [
            TileLayerOptions(
              urlTemplate: 
                 'https://1.bp.blogspot.com/-ixn6Lst2PGA/YQs0bRVsxlI/AAAAAAABe9E/XJuLl3RnBNwMo9uHlazF9SBYoNfMJtBcwCNcBGAsYHQ/s803/eto_tora_banzai.png',
            ),
            CircleLayerOptions(
              circles: [
                CircleMarker(
                  color: Colors.indigo.withOpacity(0.9),
                  radius: 10,
                  borderColor: Colors.white.withOpacity(0.9),
                  borderStrokeWidth: 3,
                  point: LatLng(35.681, 139.760),
                ),
                CircleMarker(
                  color:  Colors.teal.withOpacity(0.5),
                  radius: 15,
                  borderColor: Colors.white.withOpacity(0.5),
                  borderStrokeWidth: 5,
                  point: LatLng(35.675, 139.770),
                ),
                CircleMarker(
                  color:  Colors.yellow.withOpacity(0.7),
                  radius: 20,
                  borderColor: Colors.white.withOpacity(0.7),
                  borderStrokeWidth: 6,
                  point: LatLng(35.687, 139.775),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), 
//     );
//   }
// }
