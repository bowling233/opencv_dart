// coverage:ignore-file
// opencv_dart - OpenCV bindings for Dart language
//    some c wrappers were from gocv: https://github.com/hybridgroup/gocv
//    License: Apache-2.0 https://github.com/hybridgroup/gocv/blob/release/LICENSE.txt
// Author: Rainyl
// License: Apache-2.0
// Date: 2024/01/28

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;
import 'package:opencv_dart/src/g/types.g.dart' as imp1;

/// Native bindings for OpenCV - Photo
///
class CvNativePhoto {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  CvNativePhoto(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  CvNativePhoto.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void AlignMTB_Close(
    AlignMTBPtr b,
  ) {
    return _AlignMTB_Close(
      b,
    );
  }

  late final _AlignMTB_ClosePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(AlignMTBPtr)>>(
          'AlignMTB_Close');
  late final _AlignMTB_Close =
      _AlignMTB_ClosePtr.asFunction<void Function(AlignMTBPtr)>();

  ffi.Pointer<CvStatus> AlignMTB_Create(
    ffi.Pointer<AlignMTB> rval,
  ) {
    return _AlignMTB_Create(
      rval,
    );
  }

  late final _AlignMTB_CreatePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(
              ffi.Pointer<AlignMTB>)>>('AlignMTB_Create');
  late final _AlignMTB_Create = _AlignMTB_CreatePtr.asFunction<
      ffi.Pointer<CvStatus> Function(ffi.Pointer<AlignMTB>)>();

  ffi.Pointer<CvStatus> AlignMTB_CreateWithParams(
    int max_bits,
    int exclude_range,
    bool cut,
    ffi.Pointer<AlignMTB> rval,
  ) {
    return _AlignMTB_CreateWithParams(
      max_bits,
      exclude_range,
      cut,
      rval,
    );
  }

  late final _AlignMTB_CreateWithParamsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(ffi.Int, ffi.Int, ffi.Bool,
              ffi.Pointer<AlignMTB>)>>('AlignMTB_CreateWithParams');
  late final _AlignMTB_CreateWithParams =
      _AlignMTB_CreateWithParamsPtr.asFunction<
          ffi.Pointer<CvStatus> Function(
              int, int, bool, ffi.Pointer<AlignMTB>)>();

  ffi.Pointer<CvStatus> AlignMTB_CreateWithParams_Async(
    int max_bits,
    int exclude_range,
    bool cut,
    imp1.CvCallback_1 callback,
  ) {
    return _AlignMTB_CreateWithParams_Async(
      max_bits,
      exclude_range,
      cut,
      callback,
    );
  }

  late final _AlignMTB_CreateWithParams_AsyncPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(ffi.Int, ffi.Int, ffi.Bool,
              imp1.CvCallback_1)>>('AlignMTB_CreateWithParams_Async');
  late final _AlignMTB_CreateWithParams_Async =
      _AlignMTB_CreateWithParams_AsyncPtr.asFunction<
          ffi.Pointer<CvStatus> Function(int, int, bool, imp1.CvCallback_1)>();

  ffi.Pointer<CvStatus> AlignMTB_Create_Async(
    imp1.CvCallback_1 callback,
  ) {
    return _AlignMTB_Create_Async(
      callback,
    );
  }

  late final _AlignMTB_Create_AsyncPtr = _lookup<
          ffi
          .NativeFunction<ffi.Pointer<CvStatus> Function(imp1.CvCallback_1)>>(
      'AlignMTB_Create_Async');
  late final _AlignMTB_Create_Async = _AlignMTB_Create_AsyncPtr.asFunction<
      ffi.Pointer<CvStatus> Function(imp1.CvCallback_1)>();

  ffi.Pointer<CvStatus> AlignMTB_Process(
    AlignMTB b,
    VecMat src,
    ffi.Pointer<VecMat> dst,
  ) {
    return _AlignMTB_Process(
      b,
      src,
      dst,
    );
  }

  late final _AlignMTB_ProcessPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(
              AlignMTB, VecMat, ffi.Pointer<VecMat>)>>('AlignMTB_Process');
  late final _AlignMTB_Process = _AlignMTB_ProcessPtr.asFunction<
      ffi.Pointer<CvStatus> Function(AlignMTB, VecMat, ffi.Pointer<VecMat>)>();

  ffi.Pointer<CvStatus> AlignMTB_Process_Async(
    AlignMTB b,
    VecMat src,
    imp1.CvCallback_1 callback,
  ) {
    return _AlignMTB_Process_Async(
      b,
      src,
      callback,
    );
  }

  late final _AlignMTB_Process_AsyncPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(
              AlignMTB, VecMat, imp1.CvCallback_1)>>('AlignMTB_Process_Async');
  late final _AlignMTB_Process_Async = _AlignMTB_Process_AsyncPtr.asFunction<
      ffi.Pointer<CvStatus> Function(AlignMTB, VecMat, imp1.CvCallback_1)>();

  ffi.Pointer<CvStatus> ColorChange(
    Mat src,
    Mat mask,
    Mat dst,
    double red_mul,
    double green_mul,
    double blue_mul,
  ) {
    return _ColorChange(
      src,
      mask,
      dst,
      red_mul,
      green_mul,
      blue_mul,
    );
  }

  late final _ColorChangePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(
              Mat, Mat, Mat, ffi.Float, ffi.Float, ffi.Float)>>('ColorChange');
  late final _ColorChange = _ColorChangePtr.asFunction<
      ffi.Pointer<CvStatus> Function(Mat, Mat, Mat, double, double, double)>();

  ffi.Pointer<CvStatus> ColorChange_Async(
    Mat src,
    Mat mask,
    double red_mul,
    double green_mul,
    double blue_mul,
    imp1.CvCallback_1 callback,
  ) {
    return _ColorChange_Async(
      src,
      mask,
      red_mul,
      green_mul,
      blue_mul,
      callback,
    );
  }

  late final _ColorChange_AsyncPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(Mat, Mat, ffi.Float, ffi.Float,
              ffi.Float, imp1.CvCallback_1)>>('ColorChange_Async');
  late final _ColorChange_Async = _ColorChange_AsyncPtr.asFunction<
      ffi.Pointer<CvStatus> Function(
          Mat, Mat, double, double, double, imp1.CvCallback_1)>();

  ffi.Pointer<CvStatus> DetailEnhance(
    Mat src,
    Mat dst,
    double sigma_s,
    double sigma_r,
  ) {
    return _DetailEnhance(
      src,
      dst,
      sigma_s,
      sigma_r,
    );
  }

  late final _DetailEnhancePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(
              Mat, Mat, ffi.Float, ffi.Float)>>('DetailEnhance');
  late final _DetailEnhance = _DetailEnhancePtr.asFunction<
      ffi.Pointer<CvStatus> Function(Mat, Mat, double, double)>();

  ffi.Pointer<CvStatus> DetailEnhance_Async(
    Mat src,
    double sigma_s,
    double sigma_r,
    imp1.CvCallback_1 callback,
  ) {
    return _DetailEnhance_Async(
      src,
      sigma_s,
      sigma_r,
      callback,
    );
  }

  late final _DetailEnhance_AsyncPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(Mat, ffi.Float, ffi.Float,
              imp1.CvCallback_1)>>('DetailEnhance_Async');
  late final _DetailEnhance_Async = _DetailEnhance_AsyncPtr.asFunction<
      ffi.Pointer<CvStatus> Function(Mat, double, double, imp1.CvCallback_1)>();

  ffi.Pointer<CvStatus> EdgePreservingFilter(
    Mat src,
    Mat dst,
    int filter,
    double sigma_s,
    double sigma_r,
  ) {
    return _EdgePreservingFilter(
      src,
      dst,
      filter,
      sigma_s,
      sigma_r,
    );
  }

  late final _EdgePreservingFilterPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(Mat, Mat, ffi.Int, ffi.Float,
              ffi.Float)>>('EdgePreservingFilter');
  late final _EdgePreservingFilter = _EdgePreservingFilterPtr.asFunction<
      ffi.Pointer<CvStatus> Function(Mat, Mat, int, double, double)>();

  ffi.Pointer<CvStatus> EdgePreservingFilter_Async(
    Mat src,
    int filter,
    double sigma_s,
    double sigma_r,
    imp1.CvCallback_1 callback,
  ) {
    return _EdgePreservingFilter_Async(
      src,
      filter,
      sigma_s,
      sigma_r,
      callback,
    );
  }

  late final _EdgePreservingFilter_AsyncPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(Mat, ffi.Int, ffi.Float, ffi.Float,
              imp1.CvCallback_1)>>('EdgePreservingFilter_Async');
  late final _EdgePreservingFilter_Async =
      _EdgePreservingFilter_AsyncPtr.asFunction<
          ffi.Pointer<CvStatus> Function(
              Mat, int, double, double, imp1.CvCallback_1)>();

  ffi.Pointer<CvStatus> FastNlMeansDenoising(
    Mat src,
    Mat dst,
  ) {
    return _FastNlMeansDenoising(
      src,
      dst,
    );
  }

  late final _FastNlMeansDenoisingPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<CvStatus> Function(Mat, Mat)>>(
          'FastNlMeansDenoising');
  late final _FastNlMeansDenoising = _FastNlMeansDenoisingPtr.asFunction<
      ffi.Pointer<CvStatus> Function(Mat, Mat)>();

  ffi.Pointer<CvStatus> FastNlMeansDenoisingColored(
    Mat src,
    Mat dst,
  ) {
    return _FastNlMeansDenoisingColored(
      src,
      dst,
    );
  }

  late final _FastNlMeansDenoisingColoredPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<CvStatus> Function(Mat, Mat)>>(
          'FastNlMeansDenoisingColored');
  late final _FastNlMeansDenoisingColored = _FastNlMeansDenoisingColoredPtr
      .asFunction<ffi.Pointer<CvStatus> Function(Mat, Mat)>();

  ffi.Pointer<CvStatus> FastNlMeansDenoisingColoredMulti(
    VecMat src,
    Mat dst,
    int imgToDenoiseIndex,
    int temporalWindowSize,
  ) {
    return _FastNlMeansDenoisingColoredMulti(
      src,
      dst,
      imgToDenoiseIndex,
      temporalWindowSize,
    );
  }

  late final _FastNlMeansDenoisingColoredMultiPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(VecMat, Mat, ffi.Int,
              ffi.Int)>>('FastNlMeansDenoisingColoredMulti');
  late final _FastNlMeansDenoisingColoredMulti =
      _FastNlMeansDenoisingColoredMultiPtr.asFunction<
          ffi.Pointer<CvStatus> Function(VecMat, Mat, int, int)>();

  ffi.Pointer<CvStatus> FastNlMeansDenoisingColoredMultiWithParams(
    VecMat src,
    Mat dst,
    int imgToDenoiseIndex,
    int temporalWindowSize,
    double h,
    double hColor,
    int templateWindowSize,
    int searchWindowSize,
  ) {
    return _FastNlMeansDenoisingColoredMultiWithParams(
      src,
      dst,
      imgToDenoiseIndex,
      temporalWindowSize,
      h,
      hColor,
      templateWindowSize,
      searchWindowSize,
    );
  }

  late final _FastNlMeansDenoisingColoredMultiWithParamsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(
              VecMat,
              Mat,
              ffi.Int,
              ffi.Int,
              ffi.Float,
              ffi.Float,
              ffi.Int,
              ffi.Int)>>('FastNlMeansDenoisingColoredMultiWithParams');
  late final _FastNlMeansDenoisingColoredMultiWithParams =
      _FastNlMeansDenoisingColoredMultiWithParamsPtr.asFunction<
          ffi.Pointer<CvStatus> Function(
              VecMat, Mat, int, int, double, double, int, int)>();

  ffi.Pointer<CvStatus> FastNlMeansDenoisingColoredMultiWithParams_Async(
    VecMat src,
    int imgToDenoiseIndex,
    int temporalWindowSize,
    double h,
    double hColor,
    int templateWindowSize,
    int searchWindowSize,
    imp1.CvCallback_1 callback,
  ) {
    return _FastNlMeansDenoisingColoredMultiWithParams_Async(
      src,
      imgToDenoiseIndex,
      temporalWindowSize,
      h,
      hColor,
      templateWindowSize,
      searchWindowSize,
      callback,
    );
  }

  late final _FastNlMeansDenoisingColoredMultiWithParams_AsyncPtr = _lookup<
          ffi.NativeFunction<
              ffi.Pointer<CvStatus> Function(VecMat, ffi.Int, ffi.Int,
                  ffi.Float, ffi.Float, ffi.Int, ffi.Int, imp1.CvCallback_1)>>(
      'FastNlMeansDenoisingColoredMultiWithParams_Async');
  late final _FastNlMeansDenoisingColoredMultiWithParams_Async =
      _FastNlMeansDenoisingColoredMultiWithParams_AsyncPtr.asFunction<
          ffi.Pointer<CvStatus> Function(
              VecMat, int, int, double, double, int, int, imp1.CvCallback_1)>();

  ffi.Pointer<CvStatus> FastNlMeansDenoisingColoredMulti_Async(
    VecMat src,
    int imgToDenoiseIndex,
    int temporalWindowSize,
    imp1.CvCallback_1 callback,
  ) {
    return _FastNlMeansDenoisingColoredMulti_Async(
      src,
      imgToDenoiseIndex,
      temporalWindowSize,
      callback,
    );
  }

  late final _FastNlMeansDenoisingColoredMulti_AsyncPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(VecMat, ffi.Int, ffi.Int,
              imp1.CvCallback_1)>>('FastNlMeansDenoisingColoredMulti_Async');
  late final _FastNlMeansDenoisingColoredMulti_Async =
      _FastNlMeansDenoisingColoredMulti_AsyncPtr.asFunction<
          ffi.Pointer<CvStatus> Function(
              VecMat, int, int, imp1.CvCallback_1)>();

  ffi.Pointer<CvStatus> FastNlMeansDenoisingColoredWithParams(
    Mat src,
    Mat dst,
    double h,
    double hColor,
    int templateWindowSize,
    int searchWindowSize,
  ) {
    return _FastNlMeansDenoisingColoredWithParams(
      src,
      dst,
      h,
      hColor,
      templateWindowSize,
      searchWindowSize,
    );
  }

  late final _FastNlMeansDenoisingColoredWithParamsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(Mat, Mat, ffi.Float, ffi.Float,
              ffi.Int, ffi.Int)>>('FastNlMeansDenoisingColoredWithParams');
  late final _FastNlMeansDenoisingColoredWithParams =
      _FastNlMeansDenoisingColoredWithParamsPtr.asFunction<
          ffi.Pointer<CvStatus> Function(Mat, Mat, double, double, int, int)>();

  ffi.Pointer<CvStatus> FastNlMeansDenoisingColoredWithParams_Async(
    Mat src,
    double h,
    double hColor,
    int templateWindowSize,
    int searchWindowSize,
    imp1.CvCallback_1 callback,
  ) {
    return _FastNlMeansDenoisingColoredWithParams_Async(
      src,
      h,
      hColor,
      templateWindowSize,
      searchWindowSize,
      callback,
    );
  }

  late final _FastNlMeansDenoisingColoredWithParams_AsyncPtr = _lookup<
          ffi.NativeFunction<
              ffi.Pointer<CvStatus> Function(Mat, ffi.Float, ffi.Float, ffi.Int,
                  ffi.Int, imp1.CvCallback_1)>>(
      'FastNlMeansDenoisingColoredWithParams_Async');
  late final _FastNlMeansDenoisingColoredWithParams_Async =
      _FastNlMeansDenoisingColoredWithParams_AsyncPtr.asFunction<
          ffi.Pointer<CvStatus> Function(
              Mat, double, double, int, int, imp1.CvCallback_1)>();

  ffi.Pointer<CvStatus> FastNlMeansDenoisingColored_Async(
    Mat src,
    imp1.CvCallback_1 callback,
  ) {
    return _FastNlMeansDenoisingColored_Async(
      src,
      callback,
    );
  }

  late final _FastNlMeansDenoisingColored_AsyncPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(
              Mat, imp1.CvCallback_1)>>('FastNlMeansDenoisingColored_Async');
  late final _FastNlMeansDenoisingColored_Async =
      _FastNlMeansDenoisingColored_AsyncPtr.asFunction<
          ffi.Pointer<CvStatus> Function(Mat, imp1.CvCallback_1)>();

  ffi.Pointer<CvStatus> FastNlMeansDenoisingWithParams(
    Mat src,
    Mat dst,
    double h,
    int templateWindowSize,
    int searchWindowSize,
  ) {
    return _FastNlMeansDenoisingWithParams(
      src,
      dst,
      h,
      templateWindowSize,
      searchWindowSize,
    );
  }

  late final _FastNlMeansDenoisingWithParamsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(Mat, Mat, ffi.Float, ffi.Int,
              ffi.Int)>>('FastNlMeansDenoisingWithParams');
  late final _FastNlMeansDenoisingWithParams =
      _FastNlMeansDenoisingWithParamsPtr.asFunction<
          ffi.Pointer<CvStatus> Function(Mat, Mat, double, int, int)>();

  ffi.Pointer<CvStatus> FastNlMeansDenoisingWithParams_Async(
    Mat src,
    double h,
    int templateWindowSize,
    int searchWindowSize,
    imp1.CvCallback_1 callback,
  ) {
    return _FastNlMeansDenoisingWithParams_Async(
      src,
      h,
      templateWindowSize,
      searchWindowSize,
      callback,
    );
  }

  late final _FastNlMeansDenoisingWithParams_AsyncPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(Mat, ffi.Float, ffi.Int, ffi.Int,
              imp1.CvCallback_1)>>('FastNlMeansDenoisingWithParams_Async');
  late final _FastNlMeansDenoisingWithParams_Async =
      _FastNlMeansDenoisingWithParams_AsyncPtr.asFunction<
          ffi.Pointer<CvStatus> Function(
              Mat, double, int, int, imp1.CvCallback_1)>();

  ffi.Pointer<CvStatus> FastNlMeansDenoising_Async(
    Mat src,
    imp1.CvCallback_1 callback,
  ) {
    return _FastNlMeansDenoising_Async(
      src,
      callback,
    );
  }

  late final _FastNlMeansDenoising_AsyncPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(
              Mat, imp1.CvCallback_1)>>('FastNlMeansDenoising_Async');
  late final _FastNlMeansDenoising_Async = _FastNlMeansDenoising_AsyncPtr
      .asFunction<ffi.Pointer<CvStatus> Function(Mat, imp1.CvCallback_1)>();

  ffi.Pointer<CvStatus> IlluminationChange(
    Mat src,
    Mat mask,
    Mat dst,
    double alpha,
    double beta,
  ) {
    return _IlluminationChange(
      src,
      mask,
      dst,
      alpha,
      beta,
    );
  }

  late final _IlluminationChangePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(
              Mat, Mat, Mat, ffi.Float, ffi.Float)>>('IlluminationChange');
  late final _IlluminationChange = _IlluminationChangePtr.asFunction<
      ffi.Pointer<CvStatus> Function(Mat, Mat, Mat, double, double)>();

  ffi.Pointer<CvStatus> IlluminationChange_Async(
    Mat src,
    Mat mask,
    double alpha,
    double beta,
    imp1.CvCallback_1 callback,
  ) {
    return _IlluminationChange_Async(
      src,
      mask,
      alpha,
      beta,
      callback,
    );
  }

  late final _IlluminationChange_AsyncPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(Mat, Mat, ffi.Float, ffi.Float,
              imp1.CvCallback_1)>>('IlluminationChange_Async');
  late final _IlluminationChange_Async =
      _IlluminationChange_AsyncPtr.asFunction<
          ffi.Pointer<CvStatus> Function(
              Mat, Mat, double, double, imp1.CvCallback_1)>();

  void MergeMertens_Close(
    MergeMertensPtr b,
  ) {
    return _MergeMertens_Close(
      b,
    );
  }

  late final _MergeMertens_ClosePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(MergeMertensPtr)>>(
          'MergeMertens_Close');
  late final _MergeMertens_Close =
      _MergeMertens_ClosePtr.asFunction<void Function(MergeMertensPtr)>();

  ffi.Pointer<CvStatus> MergeMertens_Create(
    ffi.Pointer<MergeMertens> rval,
  ) {
    return _MergeMertens_Create(
      rval,
    );
  }

  late final _MergeMertens_CreatePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(
              ffi.Pointer<MergeMertens>)>>('MergeMertens_Create');
  late final _MergeMertens_Create = _MergeMertens_CreatePtr.asFunction<
      ffi.Pointer<CvStatus> Function(ffi.Pointer<MergeMertens>)>();

  ffi.Pointer<CvStatus> MergeMertens_CreateWithParams(
    double contrast_weight,
    double saturation_weight,
    double exposure_weight,
    ffi.Pointer<MergeMertens> rval,
  ) {
    return _MergeMertens_CreateWithParams(
      contrast_weight,
      saturation_weight,
      exposure_weight,
      rval,
    );
  }

  late final _MergeMertens_CreateWithParamsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(ffi.Float, ffi.Float, ffi.Float,
              ffi.Pointer<MergeMertens>)>>('MergeMertens_CreateWithParams');
  late final _MergeMertens_CreateWithParams =
      _MergeMertens_CreateWithParamsPtr.asFunction<
          ffi.Pointer<CvStatus> Function(
              double, double, double, ffi.Pointer<MergeMertens>)>();

  ffi.Pointer<CvStatus> MergeMertens_CreateWithParams_Async(
    double contrast_weight,
    double saturation_weight,
    double exposure_weight,
    imp1.CvCallback_1 callback,
  ) {
    return _MergeMertens_CreateWithParams_Async(
      contrast_weight,
      saturation_weight,
      exposure_weight,
      callback,
    );
  }

  late final _MergeMertens_CreateWithParams_AsyncPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(ffi.Float, ffi.Float, ffi.Float,
              imp1.CvCallback_1)>>('MergeMertens_CreateWithParams_Async');
  late final _MergeMertens_CreateWithParams_Async =
      _MergeMertens_CreateWithParams_AsyncPtr.asFunction<
          ffi.Pointer<CvStatus> Function(
              double, double, double, imp1.CvCallback_1)>();

  ffi.Pointer<CvStatus> MergeMertens_Create_Async(
    imp1.CvCallback_1 callback,
  ) {
    return _MergeMertens_Create_Async(
      callback,
    );
  }

  late final _MergeMertens_Create_AsyncPtr = _lookup<
          ffi
          .NativeFunction<ffi.Pointer<CvStatus> Function(imp1.CvCallback_1)>>(
      'MergeMertens_Create_Async');
  late final _MergeMertens_Create_Async = _MergeMertens_Create_AsyncPtr
      .asFunction<ffi.Pointer<CvStatus> Function(imp1.CvCallback_1)>();

  ffi.Pointer<CvStatus> MergeMertens_Process(
    MergeMertens b,
    VecMat src,
    Mat dst,
  ) {
    return _MergeMertens_Process(
      b,
      src,
      dst,
    );
  }

  late final _MergeMertens_ProcessPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(
              MergeMertens, VecMat, Mat)>>('MergeMertens_Process');
  late final _MergeMertens_Process = _MergeMertens_ProcessPtr.asFunction<
      ffi.Pointer<CvStatus> Function(MergeMertens, VecMat, Mat)>();

  ffi.Pointer<CvStatus> MergeMertens_Process_Async(
    MergeMertens b,
    VecMat src,
    imp1.CvCallback_1 callback,
  ) {
    return _MergeMertens_Process_Async(
      b,
      src,
      callback,
    );
  }

  late final _MergeMertens_Process_AsyncPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(MergeMertens, VecMat,
              imp1.CvCallback_1)>>('MergeMertens_Process_Async');
  late final _MergeMertens_Process_Async =
      _MergeMertens_Process_AsyncPtr.asFunction<
          ffi.Pointer<CvStatus> Function(
              MergeMertens, VecMat, imp1.CvCallback_1)>();

  ffi.Pointer<CvStatus> PencilSketch(
    Mat src,
    Mat dst1,
    Mat dst2,
    double sigma_s,
    double sigma_r,
    double shade_factor,
  ) {
    return _PencilSketch(
      src,
      dst1,
      dst2,
      sigma_s,
      sigma_r,
      shade_factor,
    );
  }

  late final _PencilSketchPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(
              Mat, Mat, Mat, ffi.Float, ffi.Float, ffi.Float)>>('PencilSketch');
  late final _PencilSketch = _PencilSketchPtr.asFunction<
      ffi.Pointer<CvStatus> Function(Mat, Mat, Mat, double, double, double)>();

  ffi.Pointer<CvStatus> PencilSketch_Async(
    Mat src,
    double sigma_s,
    double sigma_r,
    double shade_factor,
    imp1.CvCallback_2 callback,
  ) {
    return _PencilSketch_Async(
      src,
      sigma_s,
      sigma_r,
      shade_factor,
      callback,
    );
  }

  late final _PencilSketch_AsyncPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(Mat, ffi.Float, ffi.Float, ffi.Float,
              imp1.CvCallback_2)>>('PencilSketch_Async');
  late final _PencilSketch_Async = _PencilSketch_AsyncPtr.asFunction<
      ffi.Pointer<CvStatus> Function(
          Mat, double, double, double, imp1.CvCallback_2)>();

  ffi.Pointer<CvStatus> PhotoInpaint(
    Mat src,
    Mat mask,
    Mat dst,
    double inpaint_radius,
    int algorithm_type,
  ) {
    return _PhotoInpaint(
      src,
      mask,
      dst,
      inpaint_radius,
      algorithm_type,
    );
  }

  late final _PhotoInpaintPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(
              Mat, Mat, Mat, ffi.Float, ffi.Int)>>('PhotoInpaint');
  late final _PhotoInpaint = _PhotoInpaintPtr.asFunction<
      ffi.Pointer<CvStatus> Function(Mat, Mat, Mat, double, int)>();

  ffi.Pointer<CvStatus> PhotoInpaint_Async(
    Mat src,
    Mat mask,
    double inpaint_radius,
    int algorithm_type,
    imp1.CvCallback_1 callback,
  ) {
    return _PhotoInpaint_Async(
      src,
      mask,
      inpaint_radius,
      algorithm_type,
      callback,
    );
  }

  late final _PhotoInpaint_AsyncPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(Mat, Mat, ffi.Float, ffi.Int,
              imp1.CvCallback_1)>>('PhotoInpaint_Async');
  late final _PhotoInpaint_Async = _PhotoInpaint_AsyncPtr.asFunction<
      ffi.Pointer<CvStatus> Function(
          Mat, Mat, double, int, imp1.CvCallback_1)>();

  ffi.Pointer<CvStatus> SeamlessClone(
    Mat src,
    Mat dst,
    Mat mask,
    Point p,
    Mat blend,
    int flags,
  ) {
    return _SeamlessClone(
      src,
      dst,
      mask,
      p,
      blend,
      flags,
    );
  }

  late final _SeamlessClonePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(
              Mat, Mat, Mat, Point, Mat, ffi.Int)>>('SeamlessClone');
  late final _SeamlessClone = _SeamlessClonePtr.asFunction<
      ffi.Pointer<CvStatus> Function(Mat, Mat, Mat, Point, Mat, int)>();

  ffi.Pointer<CvStatus> SeamlessClone_Async(
    Mat src,
    Mat dst,
    Mat mask,
    Point p,
    int flags,
    imp1.CvCallback_1 callback,
  ) {
    return _SeamlessClone_Async(
      src,
      dst,
      mask,
      p,
      flags,
      callback,
    );
  }

  late final _SeamlessClone_AsyncPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(Mat, Mat, Mat, Point, ffi.Int,
              imp1.CvCallback_1)>>('SeamlessClone_Async');
  late final _SeamlessClone_Async = _SeamlessClone_AsyncPtr.asFunction<
      ffi.Pointer<CvStatus> Function(
          Mat, Mat, Mat, Point, int, imp1.CvCallback_1)>();

  ffi.Pointer<CvStatus> Stylization(
    Mat src,
    Mat dst,
    double sigma_s,
    double sigma_r,
  ) {
    return _Stylization(
      src,
      dst,
      sigma_s,
      sigma_r,
    );
  }

  late final _StylizationPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(
              Mat, Mat, ffi.Float, ffi.Float)>>('Stylization');
  late final _Stylization = _StylizationPtr.asFunction<
      ffi.Pointer<CvStatus> Function(Mat, Mat, double, double)>();

  ffi.Pointer<CvStatus> Stylization_Async(
    Mat src,
    double sigma_s,
    double sigma_r,
    imp1.CvCallback_1 callback,
  ) {
    return _Stylization_Async(
      src,
      sigma_s,
      sigma_r,
      callback,
    );
  }

  late final _Stylization_AsyncPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(Mat, ffi.Float, ffi.Float,
              imp1.CvCallback_1)>>('Stylization_Async');
  late final _Stylization_Async = _Stylization_AsyncPtr.asFunction<
      ffi.Pointer<CvStatus> Function(Mat, double, double, imp1.CvCallback_1)>();

  ffi.Pointer<CvStatus> TextureFlattening(
    Mat src,
    Mat mask,
    Mat dst,
    double low_threshold,
    double high_threshold,
    int kernel_size,
  ) {
    return _TextureFlattening(
      src,
      mask,
      dst,
      low_threshold,
      high_threshold,
      kernel_size,
    );
  }

  late final _TextureFlatteningPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(Mat, Mat, Mat, ffi.Float, ffi.Float,
              ffi.Int)>>('TextureFlattening');
  late final _TextureFlattening = _TextureFlatteningPtr.asFunction<
      ffi.Pointer<CvStatus> Function(Mat, Mat, Mat, double, double, int)>();

  ffi.Pointer<CvStatus> TextureFlattening_Async(
    Mat src,
    Mat mask,
    double low_threshold,
    double high_threshold,
    int kernel_size,
    imp1.CvCallback_1 callback,
  ) {
    return _TextureFlattening_Async(
      src,
      mask,
      low_threshold,
      high_threshold,
      kernel_size,
      callback,
    );
  }

  late final _TextureFlattening_AsyncPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CvStatus> Function(Mat, Mat, ffi.Float, ffi.Float,
              ffi.Int, imp1.CvCallback_1)>>('TextureFlattening_Async');
  late final _TextureFlattening_Async = _TextureFlattening_AsyncPtr.asFunction<
      ffi.Pointer<CvStatus> Function(
          Mat, Mat, double, double, int, imp1.CvCallback_1)>();

  late final addresses = _SymbolAddresses(this);
}

class _SymbolAddresses {
  final CvNativePhoto _library;
  _SymbolAddresses(this._library);
  ffi.Pointer<ffi.NativeFunction<ffi.Void Function(AlignMTBPtr)>>
      get AlignMTB_Close => _library._AlignMTB_ClosePtr;
  ffi.Pointer<ffi.NativeFunction<ffi.Void Function(MergeMertensPtr)>>
      get MergeMertens_Close => _library._MergeMertens_ClosePtr;
}

final class AlignMTB extends ffi.Struct {
  external ffi.Pointer<ffi.Void> ptr;
}

typedef AlignMTBPtr = ffi.Pointer<AlignMTB>;
typedef CvStatus = imp1.CvStatus;
typedef Mat = imp1.Mat;

final class MergeMertens extends ffi.Struct {
  external ffi.Pointer<ffi.Void> ptr;
}

typedef MergeMertensPtr = ffi.Pointer<MergeMertens>;
typedef Point = imp1.Point;
typedef VecMat = imp1.VecMat;