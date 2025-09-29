// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get tokiLog => 'トキログ';

  @override
  String get reply => '返信する';

  @override
  String get whatAreYouDoing => '今何してる？';

  @override
  String get replying => '返信中…';

  @override
  String get deletePost => '投稿を削除';

  @override
  String get deletePostConfirmation => '投稿を削除しますか？';

  @override
  String get delete => '削除する';

  @override
  String get cancel => 'キャンセル';

  @override
  String get thisPostIsDeleted => 'この投稿は削除されました';

  @override
  String get edit => '編集';

  @override
  String get save => '保存';
}
