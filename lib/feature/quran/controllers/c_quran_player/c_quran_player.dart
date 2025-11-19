import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:myumrah/feature/quran/controllers/c_quran_player/c_quran_player_state.dart';

class CQuranPlayer extends GetxController {
  static CQuranPlayer instance = Get.find();
  final Rx<CQuranPlayerState> _state = Rx<CQuranPlayerState>(
    const CQuranPlayerState(),
  );
  CQuranPlayerState get state => _state.value;

  final audioPlayer = AudioPlayer();

  Future<void> setPlaylist(List<AudioSource> playlist, {int initialIndex = 0}) async {
    _state.value = state.copyWith(playlist: playlist);
    await audioPlayer.setAudioSources(
      playlist,
      initialIndex: initialIndex,
      initialPosition: Duration.zero,
      shuffleOrder: DefaultShuffleOrder(), // Customise the shuffle algorithm
    );
  }
}
