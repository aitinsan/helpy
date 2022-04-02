import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:helpy/src/ui/common/app_colors.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends StatefulWidget {
  MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  List<Marker> _marker = [
    Marker(
      point: LatLng(51.169392, 71.449074),
      builder: (context) => SvgPicture.asset('assets/icons/crisis-centre.svg'),
      width: 60,
      height: 60,
    ),
    Marker(
      point: LatLng(51.174392, 71.419074),
      builder: (context) => SvgPicture.asset('assets/icons/crisis-centre.svg'),
      width: 60,
      height: 60,
    ),
    Marker(
      point: LatLng(51.169392, 71.449074),
      builder: (context) => SvgPicture.asset('assets/icons/crisis-centre.svg'),
      width: 60,
      height: 60,
    ),
    Marker(
      point: LatLng(51.178392, 71.499074),
      builder: (context) => SvgPicture.asset('assets/icons/safe-point.svg'),
      width: 60,
      height: 60,
    ),
    Marker(
      point: LatLng(51.178392, 71.449074),
      builder: (context) => SvgPicture.asset('assets/icons/safe-point.svg'),
      width: 60,
      height: 60,
    ),
    Marker(
      point: LatLng(51.162392, 71.519074),
      builder: (context) => SvgPicture.asset('assets/icons/safe-point.svg'),
      width: 60,
      height: 60,
    ),
    Marker(
      point: LatLng(51.162392, 71.399074),
      builder: (context) => SvgPicture.asset('assets/icons/safe-point.svg'),
      width: 60,
      height: 60,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FlutterMap(
          options: MapOptions(
            center: LatLng(51.169392, 71.449074),
            zoom: 13.0,
          ),
          layers: [
            TileLayerOptions(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a', 'b', 'c'],
              attributionBuilder: (_) {
                return Text("© OpenStreetMap contributors");
              },
            ),
            MarkerLayerOptions(
              markers: _marker,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/ic-safe-point.svg',
                      width: 25,
                      height: 25,
                    ),
                    Text(
                      'Безопасная\nточка',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/ic-crisis-centre.svg',
                      width: 25,
                      height: 25,
                    ),
                    Text(
                      'Кризис-\nцентры',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/ic-hospital.svg',
                      width: 25,
                      height: 25,
                    ),
                    Text(
                      'Больница',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   CupertinoPageRoute(
                        //     builder: ((context) => SurveyListPage()),
                        //   ),
                        // );
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(AppColors.pink),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 18),
                            child: Text('Безопасные точки'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
