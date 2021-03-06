import 'package:cli_menu/cli_menu.dart';

import '../../../../core/internationalization.dart';
import '../../../../core/locales.g.dart';
import '../../../interface/command.dart';
import 'init_getxpattern.dart';
import 'init_katteko.dart';

class InitCommand extends Command {
  @override
  Future<void> execute() async {
    final menu = Menu([
      'GetX Pattern (by Kauê)',
      'CLEAN (by Arktekko)',
    ]);
    final result = menu.choose();
    result.index == 0
        ? await createInitGetxPattern()
        : await createInitKatekko();
    return;
  }

  @override
  String get hint => Translation(LocaleKeys.hint_init).tr;

  @override
  bool validate() {
    return true;
  }
}
