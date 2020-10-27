import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeBanner extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeBannerState();
}

class HomeBannerState extends State<HomeBanner> {
  List swiperDataList = [
    'https://cdncs.101.com/v0.1/download?dentryId=07629c7d-c90c-421c-96c4-60bc8d5c4f45',
    'https://cdncs.101.com/v0.1/download?dentryId=dd8e7098-332d-4f84-87ba-1c4cb54e5b1d',
    'https://cdncs.101.com/v0.1/download?dentryId=1dec5044-e224-4f78-b195-fdd77b507d84',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ConstrainedBox(
        child: Swiper(
          outer: false,
          itemBuilder: (c, i) {
            if (swiperDataList != null) {
              return CachedNetworkImage(
                imageUrl: "${swiperDataList[i]}",
                placeholder: (context, url) => new CircularProgressIndicator(),
                errorWidget: (context, url, error) => new Icon(Icons.error),
                fit: BoxFit.cover,
              );
            }
          },
          pagination: new SwiperPagination(
            margin: new EdgeInsets.all(5.0),
          ),
          itemCount: swiperDataList == null ? 0 : swiperDataList.length
        ),
        constraints: new BoxConstraints.loose(new Size(MediaQuery.of(context).size.width, 180.0)),
      )
    );
  }
}