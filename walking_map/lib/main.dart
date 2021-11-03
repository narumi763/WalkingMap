import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:walking_map/main.dart';
import 'package:latlong2/latlong.dart';
import '../config.dart';

class EnvironmentVariables{
  static const googleApiKey = Google_API_Key;
}

void main() {
  runApp(MapApp());
}

class MapApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Walking Map'),
        ),
        body: StaticMapView(),
      ),
    );
  }
}

class StaticMapView extends StatelessWidget{
  static const _baseMapUrl = 'https://maps.googleapis.com/maps/api/staticmap';
  static const _latitude = 26.1885056;
  static const _longitude = 127.6703856;
  static const _mapZoom = 'zoom=15';
  static const _mapSize = 'size=720x640';
  static const _scale = 'scale=2';
  static const _language = 'language=ja';
  static const _mapCenter = 'center=$_latitude,$_longitude';
  static const _mapMarkers = 'markers=$_latitude,$_longitude';
  static const _apiKey = 'key=${EnvironmentVariables.googleApiKey}';
  static const _imageUrl =
      '$_baseMapUrl?$_mapCenter&$_mapZoom&$_mapMarkers&$_mapSize&$_scale&$_language&$_apiKey';
  
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child:  Center(
        child:  Column(
          children: <Widget>[
            const SizedBox(height: 240,),
            Image.network(_imageUrl, fit:BoxFit.cover,),
            const SizedBox(height: 240,)
          ],
        ),
      ),
    );
  }
}

// class MapApp extends StatefulWidget {
//   @override
//   _MapAppState createState() => new _MapAppState();
// }

// class _MapAppState extends State<MapApp>{
//   String _title = '地図開拓';
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title:  'WalkingMap',
//       theme: ThemeData(
//         primarySwatch:  Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(_title),
//           actions: <Widget>[
//             IconButton(
//               onPressed: (){},
//               icon: Icon(Icons.settings),
//             )
//           ],
//         ),
//         body: FlutterMap(
//           options: MapOptions(
//             center: LatLng(35.681, 139.767),
//             zoom: 14.0,
//           ),
//           layers: [
//             TileLayerOptions(
//               urlTemplate: 
//                  'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
//               subdomains: ['a', 'b', 'c']
//             ),
//             CircleLayerOptions(
//               circles: [
//                 CircleMarker(
//                   color: Colors.indigo.withOpacity(0.9),
//                   radius: 10,
//                   borderColor: Colors.white.withOpacity(0.9),
//                   borderStrokeWidth: 3,
//                   point: LatLng(35.681, 139.760),
//                 ),
//                 CircleMarker(
//                   color:  Colors.teal.withOpacity(0.5),
//                   radius: 15,
//                   borderColor: Colors.white.withOpacity(0.5),
//                   borderStrokeWidth: 5,
//                   point: LatLng(35.675, 139.770),
//                 ),
//                 CircleMarker(
//                   color:  Colors.yellow.withOpacity(0.7),
//                   radius: 20,
//                   borderColor: Colors.white.withOpacity(0.7),
//                   borderStrokeWidth: 6,
//                   point: LatLng(35.687, 139.775),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
