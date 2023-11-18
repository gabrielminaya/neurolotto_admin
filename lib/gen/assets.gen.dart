/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/appstore.png
  AssetGenImage get appstore =>
      const AssetGenImage('assets/icons/appstore.png');

  /// File path: assets/icons/document.png
  AssetGenImage get document =>
      const AssetGenImage('assets/icons/document.png');

  /// File path: assets/icons/download.png
  AssetGenImage get download =>
      const AssetGenImage('assets/icons/download.png');

  /// File path: assets/icons/id-card.png
  AssetGenImage get idCard => const AssetGenImage('assets/icons/id-card.png');

  /// File path: assets/icons/playstore.png
  AssetGenImage get playstore =>
      const AssetGenImage('assets/icons/playstore.png');

  /// File path: assets/icons/whatsapp.png
  AssetGenImage get whatsapp =>
      const AssetGenImage('assets/icons/whatsapp.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [appstore, document, download, idCard, playstore, whatsapp];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/app_logo.png
  AssetGenImage get appLogo =>
      const AssetGenImage('assets/images/app_logo.png');

  /// File path: assets/images/company_logo.png
  AssetGenImage get companyLogo =>
      const AssetGenImage('assets/images/company_logo.png');

  /// File path: assets/images/company_logo_dark.png
  AssetGenImage get companyLogoDark =>
      const AssetGenImage('assets/images/company_logo_dark.png');

  /// File path: assets/images/neurolotto_dark.png
  AssetGenImage get neurolottoDark =>
      const AssetGenImage('assets/images/neurolotto_dark.png');

  /// File path: assets/images/neurolotto_light.png
  AssetGenImage get neurolottoLight =>
      const AssetGenImage('assets/images/neurolotto_light.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [appLogo, companyLogo, companyLogoDark, neurolottoDark, neurolottoLight];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
