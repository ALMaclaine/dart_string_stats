import 'package:string_stats/src/utils.dart';

Set<int> linesAllSpaces(String str) {
  if (isNull(str) || str.isEmpty) return <int>{};
  final out = <int>{};
  var line = 0;
  var allSpaces = true;
  for(final ch in str.split('')) {
    if(ch == '\n' && allSpaces) {
      out.add(line);
      line++;
      allSpaces = true;
    } else if(!isWhiteSpace(ch)) {
      allSpaces = false;
    }
  }
  if(allSpaces && !out.contains(line)) out.add(line);
  return out;
}