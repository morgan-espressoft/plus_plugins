import 'package:share_plus_platform_interface/method_channel/method_channel_share.dart';
import 'package:share_plus_platform_interface/platform_interface/share_plus_platform.dart';

extension MethodChannelShareExtend on MethodChannelShare {
  static Future<ShareResult> shareUriWithResult(Uri uri) async {
    final params = <String, dynamic>{'uri': uri.toString()};
    final result = await MethodChannelShare.channel
            .invokeMethod<String>('shareUriWithResult', params) ??
        'dev.fluttercommunity.plus/share/unavailable';

    return ShareResult(result, _statusFromResult(result));
  }

  static ShareResultStatus _statusFromResult(String result) {
    switch (result) {
      case '':
        return ShareResultStatus.dismissed;
      case 'dev.fluttercommunity.plus/share/unavailable':
        return ShareResultStatus.unavailable;
      default:
        return ShareResultStatus.success;
    }
  }
}
