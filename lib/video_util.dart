import 'package:vimeo_player_flutter/vimeo_player_flutter.dart';

class VideoUtil {
  VimeoPlayer getInitializedPlayer(String videoId) {
    return new VimeoPlayer(videoId: videoId);
  }
}
