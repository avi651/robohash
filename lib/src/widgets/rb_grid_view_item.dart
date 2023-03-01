import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class GridViewItem extends StatelessWidget {
  final double? itemWidth;
  final double? itemHeight;
  final String? name;
  final String? email;
  final String? image;
  const GridViewItem({Key? key,
    required this.itemHeight,
    required this.itemWidth,
    required this.name,
    required this.email,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: itemWidth,
        height: itemHeight,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Positioned(
                top: 0.0,
                right: 10.0,
                child: Icon(Icons.favorite,
                    size: 30.0, color: Colors.greenAccent[400]), //Icon
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: itemWidth,
                    width: itemHeight,
                    child: CachedNetworkImage(
                      imageUrl: image ?? "",
                      imageBuilder: (context, imageProvider) =>
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                      placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                      const Icon(Icons.error),
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    name ?? "",
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    email ?? "",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}