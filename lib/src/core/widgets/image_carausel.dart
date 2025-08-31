import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../core/constants/double.dart';

class ImageCarausel extends StatelessWidget {
  final List<String> networkImages;
  final double height;
  final int maxDisplay;
  final int minDisplay;
  const ImageCarausel({
    super.key,
    this.networkImages = const [],
    this.height = 275,
    this.maxDisplay = 1,
    this.minDisplay = 1,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isFirstBreakPoint =
            constraints.maxWidth <= ConstantDouble.breakPointFirst;
        return MouseRegion(
          cursor: SystemMouseCursors.click,
          child: CarouselSlider(
            options: CarouselOptions(
              height: isFirstBreakPoint ? null : height,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 4),
              viewportFraction: 1 / maxDisplay,
              aspectRatio: 16 / 6,
            ),
            items: networkImages.map((url) {
              return Builder(
                builder: (BuildContext context) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.network(
                      url,
                      fit: BoxFit.fill,
                      width: double.infinity,
                      loadingBuilder: (context, child, progress) {
                        if (progress == null) return child;
                        return const Center(child: CircularProgressIndicator());
                      },
                      errorBuilder: (context, error, stackTrace) =>
                          const Center(child: Icon(Icons.broken_image)),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        );
      }
    );
  }
}
