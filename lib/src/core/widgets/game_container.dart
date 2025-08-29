import 'package:flutter/material.dart';

import '../../../core/constants/string.dart';
import '../../games/data/repositories/model/game.dart';

class GameContainer extends StatefulWidget {
  final GameModel game;
  final bool isNotLimit;

  const GameContainer({Key? key, required this.game, this.isNotLimit = true})
    : super(key: key);

  @override
  _GameContainerState createState() => _GameContainerState();
}

class _GameContainerState extends State<GameContainer> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    final GlobalKey _widgetKey = GlobalKey();

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      cursor: SystemMouseCursors.click,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              child: AnimatedScale(
                scale: _isHovering ? 1.1 : 1.0, // Adjust zoom level as needed
                duration: const Duration(milliseconds: 200),
                child: Image.network(widget.game.imgURL, fit: BoxFit.cover),
              ),
            ),
            if (_isHovering && widget.isNotLimit) ...[
              Positioned.fill(
                child: Container(
                  key: _widgetKey,
                  color: Colors.black.withValues(alpha: 0.5),
                ),
              ),
              Container(
                constraints: BoxConstraints(maxHeight: 125),
                child: Image.asset(ConstantAsset.playGame),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
