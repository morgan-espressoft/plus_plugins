import 'package:share_plus_platform_interface/platform_interface/share_plus_platform.dart';

import 'method_channel_share_extend.dart';

extension SharePlatformExtend on SharePlatform {
  static Future<ShareResult> shareUriWithResult(Uri uri) async =>
      MethodChannelShareExtend.shareUriWithResult(uri);
}
