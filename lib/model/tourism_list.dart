import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_layout/model/tourism_place.dart';
import 'package:tugas_layout/preview/detailScreen.dart';
import 'package:tugas_layout/preview/list_item.dart';
import 'package:tugas_layout/provider/done_tourism_provider.dart';

class TourismList extends StatefulWidget {
  const TourismList({Key? key}) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Kenduri Durian Wonosalam (kenduren)',
      location: 'Wonosalam',
      imageAssets: 'assets/images/kenduren/banner1.png',
      description: 'Kenduren atau disebut juga Kenduri Durian Wonosalam adalah sebuah tradisi tahunan dari warga setempat 9 desa yang ada di Kecamatan Wonosalam, Kabupaten Jombang. Tradisi ini dilakukan untuk menambah rasa syukur atas melimpahnya hasil panen durian warga Kecamatan Wonosalam ini. Tumpeng durian yang dibuat oleh warga setempat setinggi 7 sampai 10 meter. Tumpeng durian raksasa ini akan disuguhkan kepada seluruh pengunjung yang datang ke acara ini secara gratis.',
      gambar1: 'assets/images/kenduren/gambar1.jpg',
      gambar2: 'assets/images/kenduren/gambar2.jpg',
      gambar3: 'assets/images/kenduren/gambar3.jpg',
      gambar4: 'assets/images/kenduren/gambar4.jpg',
      gambar5: 'assets/images/kenduren/gambar5.jpg',
      hari: 'Only Event',
      jam: 'Once a Year',
      tiket: 'free',
    ),
    TourismPlace(
      name: 'Bale Tani',
      location: 'Bareng',
      imageAssets: 'assets/images/bale_tani/banner-bale_tani.jpg',
      description: 'Wisata buatan di kota santri yang menyajikan konsep lain berwisata sekaligus belajar pertanian. Selain tempatnya yang asri, banyak area keren yang bagus dijadikan latar belakang berfoto. Hal ini menjadi daya tarik tersendiri bagi pengunjung dari kalangan milenial.',
      gambar1: 'assets/images/bale_tani/gambar_bale-tani.jpg',
      gambar2: 'assets/images/bale_tani/gambar_bale-tani2.jpg',
      gambar3: 'assets/images/bale_tani/gambar_bale-tani3.jpg',
      gambar4: 'assets/images/bale_tani/gambar_bale-tani4.jpg',
      gambar5: 'assets/images/bale_tani/gambar_bale-tani5.jpg',
      hari: 'Every Day',
      jam: '08:00 - 16:00 WIB',
      tiket: 'Rp. 10.000',
    ),
    TourismPlace(
      name: 'Kedung Cinet',
      location: 'Kabuh',
      imageAssets: 'assets/images/kedung_cinet/banner_kedung_cinet.jpg',
      description: 'Kedung Cinet adalah sebuah ngarai di kawasan tengah hutan yang dikelilingi oleh tebing bebatuan kapur berukir yang berada di Desa Klitih, Kecamatan Plandaan, Kabupaten Jombang, Jawa Timur. Kedung Cinet menjadi salah satu Pariwisata di Jombang yang dikenal sebagai spot swafoto yang menarik. Para pengunjung menyebut Kedung Cinet mirip miniatur Grand Canyon yang di Colorado Amerika serikat. Di sisi Kedung Cinet atas berupa deretan palung jurang dan goa di dasar tebing yang berornamen relief berlapis-lapis. Seluruh lokasi menyatu dengan aliran sungai dikelilingi dinding curam bebatuan khas gua.',
      gambar1: 'assets/images/kedung_cinet/gambar_kedung_cinet.jpg',
      gambar2: 'assets/images/kedung_cinet/gambar_kedung-cinet_2.jpg',
      gambar3: 'assets/images/kedung_cinet/gambar_kedung_cinet_3.jpg',
      gambar4: 'assets/images/kedung_cinet/gambar_kedung-cinet_4.jpg',
      gambar5: 'assets/images/kedung_cinet/gambar_kedung-cinet_5.jpg',
      hari: 'Every Day',
      jam: '24 hour',
      tiket: 'Rp. 5.000',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return DetailScreen(place: place);
            }));
          },
          child: Consumer<DoneTourismProvider>(
            builder: (context, DoneTourismProvider data, widget) {
              return ListItem(
                place: place,
                isDone: data.doneTourismPlaceList.contains(place),
                onCheckboxClick: (bool? value){
                  setState(() {
                    if(value != null){
                      value
                          ? data.complate(place, value)
                          : data.complate(place, value);
                    }
                  });
                },
              );
            }
          ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}
