import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fun88/src/core/widgets/category_container.dart';

import '../../games/presentation/bloc/games/games_bloc.dart';

class CategoryCarausel extends StatefulWidget {
  const CategoryCarausel({super.key});

  @override
  State<CategoryCarausel> createState() => _CategoryCarauselState();
}

class _CategoryCarauselState extends State<CategoryCarausel> {
  final ScrollController _scrollController = ScrollController();
  bool _showLeft = false;
  bool _showRight = true;

  void _updateArrows() {
    if (!_scrollController.hasClients) return;
    setState(() {
      _showLeft = _scrollController.offset > 0;
      _showRight =
          _scrollController.offset < _scrollController.position.maxScrollExtent;
    });
  }

  void _scrollLeft() {
    final double offset = (_scrollController.offset - 100).clamp(
      0,
      _scrollController.position.maxScrollExtent,
    );
    _scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  void _scrollRight() {
    final double offset = (_scrollController.offset + 100).clamp(
      0,
      _scrollController.position.maxScrollExtent,
    );
    _scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_updateArrows);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_updateArrows);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return BlocSelector<GameBloc, GameState, GameCategoriesState>(
      selector: (state) => state.categoriesState,
      builder: (context, state) {
        return Container(
          height: 75,
          color: Colors.transparent,
          child: Row(
            children: [
              if (_showLeft)
                IconButton(
                  icon: Icon(Icons.arrow_left, color: theme.primaryColor),
                  onPressed: _scrollLeft,
                ),
              Expanded(
                child: ListView.separated(
                  controller: _scrollController,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 15),
                  scrollDirection: Axis.horizontal,
                  itemCount: state.categories.length,
                  itemBuilder: (context, index) {
                    return CategoryContainer(index: index, state: state);
                  },
                ),
              ),
              if (_showRight)
                IconButton(
                  icon: Icon(Icons.arrow_right, color: theme.primaryColor),
                  onPressed: _scrollRight,
                ),
            ],
          ),
        );
      },
    );
  }
}
