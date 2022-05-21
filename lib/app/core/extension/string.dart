extension StringExtensions on String {
  bool containsIgnoreCase(String? filter) =>
      filter == null || toLowerCase().contains(filter.toLowerCase());
}
