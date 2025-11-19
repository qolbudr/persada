import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:myumrah/core/models/status.dart';
import 'package:myumrah/feature/quran/controllers/c_quran_player/c_quran_player.dart';
import 'package:myumrah/feature/quran/controllers/c_quran_surah/c_quran_surah_state.dart';
import 'package:myumrah/feature/quran/quran_routes.dart';
import 'package:myumrah/repository/r_quran/models/reciter_model/reciter_model.dart';
import 'package:myumrah/repository/r_quran/models/surah_model/surah_model.dart';
import 'package:myumrah/repository/r_quran/r_quran.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class CQuranSurah extends GetxController {
  static CQuranSurah instance = Get.find();
  final Rx<CQuranSurahState> _state = Rx<CQuranSurahState>(
    const CQuranSurahState(),
  );
  CQuranSurahState get state => _state.value;

  final refreshController = RefreshController(initialRefresh: true);
  final rQuran = Get.find<RIQuran>();
  final arguments = Get.arguments as ReciterModel?;
  final oPlayer = Get.find<CQuranPlayer>();

  @override
  void onClose() {
    super.onClose();
    refreshController.dispose();
  }

  void onGetData() async {
    try {
      _state.value = state.copyWith(status: const Status.loading());
      final response = await rQuran.surahs();
      List<SurahModel> data = [];

      if (refreshController.isRefresh) data = response;
      if (refreshController.isLoading) data = [...state.surahs, ...response];
      if (refreshController.isRefresh) refreshController.refreshCompleted();
      if (refreshController.isLoading) refreshController.loadComplete();
      if (refreshController.isLoading && (response.isEmpty))
        refreshController.loadNoData();

      _state.value = state.copyWith(
        surahs: data,
        status: const Status.success(),
      );
    } catch (e) {
      if (refreshController.isRefresh) refreshController.refreshFailed();
      if (refreshController.isLoading) refreshController.loadFailed();
    }
  }

  void onGotoPlayer(SurahModel surah) async {
    final playlist = state.surahs.map((item) {
      return AudioSource.uri(
        Uri.parse(
          'https://cdn.islamic.network/quran/audio-surah/128/${arguments?.id}/${item.number}.mp3',
        ),
        tag: item.copyWith(reciter: arguments),
      );
    });
    oPlayer.setPlaylist([...playlist], initialIndex: state.surahs.indexOf(surah));
    oPlayer.audioPlayer.play();
    QuranRoutes.toPlayer();
  }
}
