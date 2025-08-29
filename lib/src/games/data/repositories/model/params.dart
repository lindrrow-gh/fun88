import 'package:equatable/equatable.dart';
import 'package:fun88/src/games/data/repositories/model/category.dart';
import 'package:fun88/src/games/data/repositories/model/provider.dart';

class GameParam extends Equatable {
  GameProviderModel provider;
  GameCategoryModel category;
  int page;

  GameParam({required this.category, required this.provider, this.page = 1});

  GameParam copyWith({
    GameCategoryModel? category,
    GameProviderModel? provider,
    int? page,
  }) => GameParam(
    provider: provider ?? this.provider,
    category: category ?? this.category,
    page: page ?? this.page,
  );

  @override
  List<Object?> get props => [provider, category, page];
}
