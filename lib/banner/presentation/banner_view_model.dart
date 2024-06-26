
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../core/presentation/base_view_model.dart';
import '../data/banner/banner.dart';

part 'banner_view_model.freezed.dart';

class BannerViewModel extends BaseViewModel<BannerEvent, BannerCarouselState> {
  final PageController pageController = PageController();
  late final Timer scrollTask;

  BannerViewModel(List<SaleBanner> banners) : super(BannerCarouselState(banners: banners)) {
    scrollTask = autoScrollTask();
  }

  @override
  Future<BaseState<BannerCarouselState>> handleEvent(BannerEvent event) async {
    switch (event) {
      case ChangeIndex(): {
        return state.copyWith(data: state.data.copyWith(currentBannerIndex: event.targetIndex));
      }
    }
    return state;
  }

  @override
  Future<void> close() {
    scrollTask.cancel();
    print("banner close");
    return super.close();
  }

  Timer autoScrollTask() {
    return Timer.periodic(const Duration(seconds: 5),(_) {
      final targetIndex = state.data.currentBannerIndex + 1;
      pageController.animateToPage(targetIndex, duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    });
  }
}

@freezed
class BannerCarouselState with _$BannerCarouselState {
  const factory BannerCarouselState({
    required List<SaleBanner> banners,
    @Default(0) int currentBannerIndex
  }) = _BannerCarouselState;
}

abstract class BannerEvent {}
class ChangeIndex implements BannerEvent {
  final int targetIndex;
  ChangeIndex(this.targetIndex);
}
class NavigateBanner implements BannerEvent {}