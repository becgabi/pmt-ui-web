part of 'colleague_selector_cubit.dart';

enum SelectorStatus {
  /// The state of the selector has not been initialized yet.
  uninitialized,

  /// Data loading in progress
  /// This is a signal for showing an indicator if necessary.
  loading,
  loaded,

  /// Data has been loaded, or selection has been made
  updated,

  /// Indicates a failure during any bloc/cubit process.
  /// This is s signal for showing an error if necessary
  failed
}

class ColleagueSelectorState extends Equatable {
  final SelectorStatus status;
  final List<Colleague> result;
  final Object? error;

  const ColleagueSelectorState.empty()
      : status = SelectorStatus.uninitialized,
        result = const [],
        error = null;

  const ColleagueSelectorState.loading()
      : status = SelectorStatus.loading,
        result = const [],
        error = null;

  const ColleagueSelectorState.loaded(this.result)
      : status = SelectorStatus.loaded,
        error = null;

  const ColleagueSelectorState.failed(
      {required this.error, this.result = const []})
      : status = SelectorStatus.failed;

  @override
  List<Object?> get props => [status, result, result, error];
}
