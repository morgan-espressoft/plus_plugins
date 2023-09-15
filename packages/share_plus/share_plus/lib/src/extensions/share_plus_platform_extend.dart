import 'package:share_plus/src/extensions/method_channel_share_extend.dart';
import 'package:share_plus_platform_interface/platform_interface/share_plus_platform.dart';

extension SharePlatformExtend on SharePlatform {
  static Future<ShareResult> shareUriWithResult(Uri uri) async =>
      MethodChannelShareExtend.shareUriWithResult(uri);
}
