import 'package:backend_api/backend_api.dart';
import 'package:collection/collection.dart';
import 'package:reactive_forms/reactive_forms.dart';

class PartnerValueAccessor extends ControlValueAccessor<int, Partner> {
  final List<Partner> partners;

  PartnerValueAccessor(this.partners);

  @override
  Partner? modelToViewValue(int? modelValue) =>
      partners.firstWhereOrNull((partner) => partner.id == modelValue);

  @override
  int? viewToModelValue(Partner? viewValue) => viewValue?.id;
}
