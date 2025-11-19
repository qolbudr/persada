// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/img-figure-1.png
  AssetGenImage get imgFigure1 =>
      const AssetGenImage('assets/images/img-figure-1.png');

  /// File path: assets/images/img-figure-2.png
  AssetGenImage get imgFigure2 =>
      const AssetGenImage('assets/images/img-figure-2.png');

  /// File path: assets/images/img-figure-3.png
  AssetGenImage get imgFigure3 =>
      const AssetGenImage('assets/images/img-figure-3.png');

  /// File path: assets/images/img-frame-ayat.png
  AssetGenImage get imgFrameAyat =>
      const AssetGenImage('assets/images/img-frame-ayat.png');

  /// File path: assets/images/img-gradient-bg.png
  AssetGenImage get imgGradientBg =>
      const AssetGenImage('assets/images/img-gradient-bg.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    imgFigure1,
    imgFigure2,
    imgFigure3,
    imgFrameAyat,
    imgGradientBg,
  ];
}

class $AssetsJsonGen {
  const $AssetsJsonGen();

  /// File path: assets/json/reciters.json
  String get reciters => 'assets/json/reciters.json';

  /// List of all assets
  List<String> get values => [reciters];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsJsonGen json = $AssetsJsonGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
