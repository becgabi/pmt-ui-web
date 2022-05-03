import 'package:equatable/equatable.dart';

class MenuItem with EquatableMixin {
  final String title;
  final String icon;

  const MenuItem({required this.title, required this.icon});

  @override
  List<Object?> get props => [title];
}
