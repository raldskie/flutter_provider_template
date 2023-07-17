import '../enums/loading_enums.dart';

bool isLoadingMultiple(
    {required List<Loading> toMatch, required List<Loading> active}) {
  return active.any((element) => toMatch.contains(element));
}
