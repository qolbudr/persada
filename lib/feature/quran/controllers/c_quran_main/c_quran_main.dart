import 'package:get/get.dart';
import 'package:myumrah/core/models/status.dart';
import 'package:myumrah/feature/quran/controllers/c_quran_main/c_quran_main_state.dart';
import 'package:myumrah/repository/r_quran/models/reciter_model/reciter_model.dart';
import 'package:myumrah/repository/r_quran/r_quran.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class CQuranMain extends GetxController {
  static CQuranMain instance = Get.find();
  final Rx<CQuranMainState> _state = Rx<CQuranMainState>(const CQuranMainState());
  CQuranMainState get state => _state.value;

  final refreshController = RefreshController(initialRefresh: true);
  final rQuran = Get.find<RIQuran>();

  @override
  void onClose() {
    super.onClose();
    refreshController.dispose();
  }

  void onGetData() async {
    try {
      _state.value = state.copyWith(status: const Status.loading());
      await Future.delayed(const Duration(seconds: 1, milliseconds: 500)); // mock fetching from network
      final response = await rQuran.reciters();
      List<ReciterModel> data = [];

      if (refreshController.isRefresh) data = response;
      if (refreshController.isLoading) data = [...state.reciters, ...response];
      if (refreshController.isRefresh) refreshController.refreshCompleted();
      if (refreshController.isLoading) refreshController.loadComplete();
      if (refreshController.isLoading && (response.isEmpty)) refreshController.loadNoData();

      _state.value = state.copyWith(reciters: data, status: const Status.success());
    } catch (e) {
      if (refreshController.isRefresh) refreshController.refreshFailed();
      if (refreshController.isLoading) refreshController.loadFailed();
    }
  }
}