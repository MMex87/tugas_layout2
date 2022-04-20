import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas_layout/data/api/api_server.dart';
import 'package:tugas_layout/preview/detailScreen.dart';
import 'package:tugas_layout/preview/list_item.dart';
import 'package:tugas_layout/model/tourism_place.dart';
import 'package:tugas_layout/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class TourismList extends StatefulWidget {
  const TourismList({
    Key? key,
  }) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  late Future<TourismResult> _tourism;
  @override
  void initState() {
    super.initState();
    _tourism = ApiServer().wisataJombang();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _tourism,
      builder: (context, AsyncSnapshot<TourismResult> snapshot) {
        var state = snapshot.connectionState;
        if (state != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        } else {
          if (snapshot.hasData) {
            return ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                var place = snapshot.data?.tourismPlaceList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailScreen(place: place!);
                    }));
                  },
                  child: Consumer<DoneTourismProvider>(
                    builder: (context, DoneTourismProvider data, widget) {
                      final List<TourismPlace> doneTourismPlaceList =
                          Provider.of<DoneTourismProvider>(context,
                                  listen: false)
                              .doneTourismPlaceList;
                      return ListItem(
                        place: place!,
                        isDone: doneTourismPlaceList.contains(place),
                        onCheckboxClick: (bool? value) {
                          setState(() {
                            if (value != null) {
                              value
                                  ? doneTourismPlaceList.add(place)
                                  : doneTourismPlaceList.remove(place);
                            }
                          });
                        },
                      );
                    },
                  ),
                );
              },
              itemCount: snapshot.data?.tourismPlaceList.length,
            );
          } else if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else {
            return const Text('');
          }
        }
      },
    );
  }
}
