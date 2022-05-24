import 'package:backend_api/backend_api.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../repository/colleague_repository.dart';

part 'colleague_selector_state.dart';

class ColleagueSelectorCubit extends Cubit<ColleagueSelectorState> {
  final ColleagueRepository repository;

  ColleagueSelectorCubit({required this.repository})
      : super(const ColleagueSelectorState.empty());

  Future<void> init(bool filterCurrentColleague) async {
    final original = state;
    try {
      emit(const ColleagueSelectorState.loading());
      final colleagues = await repository.findAll();
      if (filterCurrentColleague) {
        final currentColleague = await repository.getByAuthToken();
        final filteredColleges = colleagues
            .where((colleague) => colleague != currentColleague)
            .toList();
        emit(ColleagueSelectorState.loaded(filteredColleges));
      } else {
        emit(ColleagueSelectorState.loaded(colleagues));
      }
    } catch (e) {
      emit(ColleagueSelectorState.failed(error: e.toString()));
      emit(original);
    }
  }
}
