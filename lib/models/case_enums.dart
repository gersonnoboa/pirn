enum SingularCase {
  nimetav("SgN"),
  omastav("SgG"),
  osastav("SgG"),
  // luhikeSisseutlev("SgAdt"),
  sisseutlev("SgIll"),
  seesutlev("SgIn"),
  seestutlev("SgEl"),
  alaleutlev("SgAll"),
  alalutlev("SgAd"),
  alaltutlev("SgAbl"),
  saav("SgTr"),
  rajav("SgTer"),
  olev("SgEs"),
  ilmautlev("SgAb"),
  kaasautlev("SgKom"),
  unknown("Unknown");

  final String label; // define a private field

  const SingularCase(this.label); // constructor

  static SingularCase fromString(String label) {
    // static parser method
    return values.firstWhere(
      (v) => v.label == label,
      orElse: () => SingularCase.unknown,
    );
  }
}

enum PluralCase {
  nimetav("PlN"),
  omastav("PlG"),
  osastav("PlG"),
  sisseutlev("PlIll"),
  seesutlev("PlIn"),
  seestutlev("PlEl"),
  alaleutlev("PlAll"),
  alalutlev("PlAd"),
  alaltutlev("PlAbl"),
  saav("PlTr"),
  rajav("PlTer"),
  olev("PlEs"),
  ilmautlev("PlAb"),
  kaasautlev("PlKom"),
  unknown("Unknown");

  final String label; // define a private field

  const PluralCase(this.label); // constructor

  static PluralCase fromString(String label) {
    // static parser method
    return values.firstWhere(
      (v) => v.label == label,
      orElse: () => PluralCase.unknown,
    );
  }
}
