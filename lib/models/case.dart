import 'package:pirn/models/case_enums.dart';

/// Case class groups the singular and plural enums into a single class.
/// This class also exposes a list of all cases possible in the Estonian
/// language, both in singular and plural form. This list is then used in the
/// app to group the cases that come from the API into singular and plural
/// forms.
class Case {
  final String longName;
  final SingularCase singularCase;
  final PluralCase pluralCase;

  Case({
    required this.longName,
    required this.singularCase,
    required this.pluralCase,
  });

  static List<Case> get cases {
    List<Case> cases = [];

    cases.add(
      Case(
        longName: "Nimetav",
        singularCase: SingularCase.nimetav,
        pluralCase: PluralCase.nimetav,
      ),
    );

    cases.add(
      Case(
        longName: "Omastav",
        singularCase: SingularCase.omastav,
        pluralCase: PluralCase.omastav,
      ),
    );

    cases.add(
      Case(
        longName: "Osastav",
        singularCase: SingularCase.osastav,
        pluralCase: PluralCase.osastav,
      ),
    );

    // cases.add(
    //   Case(
    //     singularCase: SingularCase.luhikeSisseutlev,
    //     pluralCase: PluralCase.luhikeSisseutlev,
    //   ),
    // );

    cases.add(
      Case(
        longName: "Sisseütlev",
        singularCase: SingularCase.sisseutlev,
        pluralCase: PluralCase.sisseutlev,
      ),
    );

    cases.add(
      Case(
        longName: "Seesütlev",
        singularCase: SingularCase.seesutlev,
        pluralCase: PluralCase.seesutlev,
      ),
    );

    cases.add(
      Case(
        longName: "Seestütlev",
        singularCase: SingularCase.seestutlev,
        pluralCase: PluralCase.seestutlev,
      ),
    );

    cases.add(
      Case(
        longName: "Alaleütlev",
        singularCase: SingularCase.alaleutlev,
        pluralCase: PluralCase.alaleutlev,
      ),
    );

    cases.add(
      Case(
        longName: "Alalütlev",
        singularCase: SingularCase.alalutlev,
        pluralCase: PluralCase.alalutlev,
      ),
    );

    cases.add(
      Case(
        longName: "Alaltütlev",
        singularCase: SingularCase.alaltutlev,
        pluralCase: PluralCase.alaltutlev,
      ),
    );

    cases.add(
      Case(
        longName: "Saav",
        singularCase: SingularCase.saav,
        pluralCase: PluralCase.saav,
      ),
    );

    cases.add(
      Case(
        longName: "Rajav",
        singularCase: SingularCase.rajav,
        pluralCase: PluralCase.rajav,
      ),
    );

    cases.add(
      Case(
        longName: "Olev",
        singularCase: SingularCase.olev,
        pluralCase: PluralCase.olev,
      ),
    );

    cases.add(
      Case(
        longName: "Ilmaütlev",
        singularCase: SingularCase.ilmautlev,
        pluralCase: PluralCase.ilmautlev,
      ),
    );

    cases.add(
      Case(
        longName: "Kassaütlev",
        singularCase: SingularCase.kaasautlev,
        pluralCase: PluralCase.kaasautlev,
      ),
    );

    return cases;
  }
}
