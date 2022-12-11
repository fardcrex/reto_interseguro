// 🌎 Project imports:

import 'package:inter_login/features/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure<dynamic> valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation = 'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return '''
 -------  ERROR:  ---------------------------------------------------------------------------------------------
     $explanation | $valueFailure
 --------------------------------------------------------------------------------------------------------------
    ''';
  }
}
