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
     return Image.network(_imageUrl);
   }
}
