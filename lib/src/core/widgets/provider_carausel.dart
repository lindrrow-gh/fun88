import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fun88/core/constants/double.dart';
import 'package:fun88/src/core/widgets/provider_container.dart';

import '../../../core/constants/string.dart';
import '../../games/data/repositories/model/provider.dart';
import '../../games/presentation/bloc/games/games_bloc.dart';

class ProviderCarausel extends StatefulWidget {
  final double height;
  final int maxDisplay;
  final int minDisplay;
  const ProviderCarausel({
    super.key,
    this.height = 130,
    this.maxDisplay = 6,
    this.minDisplay = 3,
  });

  @override
  State<ProviderCarausel> createState() => _ProviderCarauselState();
}

class _ProviderCarauselState extends State<ProviderCarausel> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();

  Widget _scrollControl(bool displayScroll, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LayoutBuilder(
          builder: (context, constraints) {
            bool isFirstBreakPoint =
                constraints.maxWidth <= ConstantDouble.breakPointFirst;
            return Text(
              ConstantString.providersTitle,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: isFirstBreakPoint ? 14 : 16,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
            );
          },
        ),
        const Spacer(),
        if (displayScroll) ...[
          IconButton(
            onPressed: () {
              _carouselController.previousPage(
                duration: const Duration(milliseconds: 200),
                curve: Curves.linear,
              );
            },
            icon: const Icon(Icons.arrow_back_ios, size: 20),
          ),
          IconButton(
            onPressed: () {
              _carouselController.nextPage(
                duration: const Duration(milliseconds: 200),
                curve: Curves.linear,
              );
            },
            icon: const Icon(Icons.arrow_forward_ios, size: 20),
          ),
        ],
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<GameBloc, GameState, List<GameProviderModel>>(
      selector: (state) => state.providersState.currentProviders,
      builder: (context, state) {
        final List<GameProviderModel> providers = state;
        return LayoutBuilder(
          builder: (context, constraints) {
            double width = constraints.maxWidth;
            int toDisplay = widget.maxDisplay;

            if (width <= ConstantDouble.breakPointSecond) {
              toDisplay = widget.minDisplay;
            }

            double itemWidth = (width - (toDisplay * 10)) / (toDisplay);

            bool isNotLimit = providers.length > widget.maxDisplay;

            return Column(
              children: [
                _scrollControl(isNotLimit, context),
                SizedBox(height: 20),
                CarouselSlider(
                  carouselController: _carouselController,
                  options: CarouselOptions(
                    height: widget.height,
                    autoPlay: isNotLimit,
                    autoPlayInterval: const Duration(seconds: 4),
                    viewportFraction: 1 / toDisplay,
                    enableInfiniteScroll: isNotLimit,
                    aspectRatio: 16 / 9,
                    enlargeCenterPage: false,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    padEnds: false,
                  ),
                  items: providers.map((provider) {
                    return Builder(
                      builder: (BuildContext context) {
                        return ProviderContainer(
                          provider: provider,
                          width: itemWidth,
                        );
                      },
                    );
                  }).toList(),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
