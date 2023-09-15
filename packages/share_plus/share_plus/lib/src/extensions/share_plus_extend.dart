import 'package:share_plus/share_plus.dart';
import 'package:share_plus/src/extensions/share_plus_platform_extend.dart';

extension ShareExtend on Share {
  static Future<ShareResult> shareUriWithResult(
    Uri uri,
  ) async {
    return SharePlatformExtend.shareUriWithResult(uri);
  }
}
