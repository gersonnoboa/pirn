import 'package:pirn/models/case_enums.dart';
import 'package:pirn/models/word_form.dart';

/// CasePair holds a WordForm for both singular and plural. Also it has the
/// long name of the case so that it can be displayed. Because the API returns
/// all cases separately, but showing them like this is not intuitive and not
/// what is expected of a dictionary app, the cases returned from the API are
/// grouped into case pairs and then displayed on the app.
class CasePair {
  final String longName;
  final WordForm singular;
  final WordForm plural;

  CasePair({
    required this.longName,
    required this.singular,
    required this.plural,
  });
}
