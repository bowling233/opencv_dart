library cv;

import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';

import '../core/rect.dart';
import '../core/base.dart';
import '../core/mat.dart';
import '../core/size.dart';
import '../core/vec.dart';
import '../core/point.dart';
import '../opencv.g.dart' as cvg;

class CascadeClassifier extends CvStruct<cvg.CascadeClassifier> {
  CascadeClassifier._(cvg.CascadeClassifierPtr ptr, [bool attach = true]) : super.fromPointer(ptr) {
    if (attach) {
      finalizer.attach(this, ptr.cast(), detach: this);
    }
  }

  factory CascadeClassifier.empty() {
    final p = calloc<cvg.CascadeClassifier>();
    cvRun(() => CFFI.CascadeClassifier_New(p));
    return CascadeClassifier._(p);
  }

  factory CascadeClassifier.fromFile(String filename) {
    final p = calloc<cvg.CascadeClassifier>();
    final cp = filename.toNativeUtf8().cast<ffi.Char>();
    cvRun(() => CFFI.CascadeClassifier_NewFromFile(cp, p));
    calloc.free(cp);
    return CascadeClassifier._(p);
  }

  /// Load cascade classifier from a file.
  ///
  /// For further details, please see:
  /// http://docs.opencv.org/master/d1/de5/classcv_1_1CascadeClassifier.html#a1a5884c8cc749422f9eb77c2471958bc
  bool load(String name) {
    final cname = name.toNativeUtf8().cast<ffi.Char>();
    final p = calloc<ffi.Int>();
    cvRun(() => CFFI.CascadeClassifier_Load(ref, cname, p));
    calloc.free(cname);
    return p.value != 0;
  }

  /// DetectMultiScale detects objects of different sizes in the input Mat image.
  /// The detected objects are returned as a slice of image.Rectangle structs.
  ///
  /// For further details, please see:
  /// http://docs.opencv.org/master/d1/de5/classcv_1_1CascadeClassifier.html#aaf8181cb63968136476ec4204ffca498
  VecRect detectMultiScale(
    InputArray image, {
    double scaleFactor = 1.1,
    int minNeighbors = 3,
    int flags = 0,
    Size minSize = (0, 0),
    Size maxSize = (0, 0),
  }) {
    return using<VecRect>((arena) {
      final ret = calloc<cvg.VecRect>();
      cvRun(() => CFFI.CascadeClassifier_DetectMultiScaleWithParams(ref, image.ref, ret,
          scaleFactor, minNeighbors, flags, minSize.toSize(arena).ref, maxSize.toSize(arena).ref));
      return VecRect.fromPointer(ret);
    });
  }

  (VecRect objects, VecInt numDetections) detectMultiScale2(
    InputArray image, {
    double scaleFactor = 1.1,
    int minNeighbors = 3,
    int flags = 0,
    Size minSize = (0, 0),
    Size maxSize = (0, 0),
  }) {
    return using<(VecRect, VecInt)>((arena) {
      final ret = calloc<cvg.VecRect>();
      final pnums = calloc<cvg.VecInt>();
      cvRun(() => CFFI.CascadeClassifier_DetectMultiScale2(ref, image.ref, ret, pnums, scaleFactor,
          minNeighbors, flags, minSize.toSize(arena).ref, maxSize.toSize(arena).ref));
      return (VecRect.fromPointer(ret), VecInt.fromPointer(pnums));
    });
  }

  (VecRect objects, VecInt numDetections, VecDouble levelWeights) detectMultiScale3(
    InputArray image, {
    double scaleFactor = 1.1,
    int minNeighbors = 3,
    int flags = 0,
    Size minSize = (0, 0),
    Size maxSize = (0, 0),
    bool outputRejectLevels = false,
  }) {
    return using<(VecRect, VecInt, VecDouble)>((arena) {
      final objects = calloc<cvg.VecRect>();
      final rejectLevels = calloc<cvg.VecInt>();
      final levelWeights = calloc<cvg.VecDouble>();
      cvRun(
        () => CFFI.CascadeClassifier_DetectMultiScale3(
          ref,
          image.ref,
          objects,
          rejectLevels,
          levelWeights,
          scaleFactor,
          minNeighbors,
          flags,
          minSize.toSize(arena).ref,
          maxSize.toSize(arena).ref,
          outputRejectLevels,
        ),
      );
      return (
        VecRect.fromPointer(objects),
        VecInt.fromPointer(rejectLevels),
        VecDouble.fromPointer(levelWeights)
      );
    });
  }

  /// Checks whether the classifier has been loaded.
  ///
  /// https://docs.opencv.org/4.x/d1/de5/classcv_1_1CascadeClassifier.html#a1753ebe58554fe0673ce46cb4e83f08a
  bool empty() {
    return using<bool>((arena) {
      final p = arena<ffi.Bool>();
      cvRun(() => CFFI.CascadeClassifier_Empty(ref, p));
      return p.value;
    });
  }

  /// https://docs.opencv.org/4.x/d1/de5/classcv_1_1CascadeClassifier.html#a0bab6de516c685ba879a4b1f1debdef1
  int getFeatureType() {
    return using<int>((arena) {
      final p = arena<ffi.Int>();
      cvRun(() => CFFI.CascadeClassifier_getFeatureType(ref, p));
      return p.value;
    });
  }

  /// https://docs.opencv.org/4.x/d1/de5/classcv_1_1CascadeClassifier.html#a7a131d319ab42a444ff2bcbb433b7b41
  (int, int) getOriginalWindowSize() {
    final p = calloc<cvg.Size>();
    cvRun(() => CFFI.CascadeClassifier_getOriginalWindowSize(ref, p));
    final ret = (p.ref.width, p.ref.height);
    calloc.free(p);
    return ret;
  }

  /// https://docs.opencv.org/4.x/d1/de5/classcv_1_1CascadeClassifier.html#a556bdd8738ba96aac07628ec38ff46da
  bool isOldFormatCascade() {
    return using<bool>((arena) {
      final p = arena<ffi.Bool>();
      cvRun(() => CFFI.CascadeClassifier_isOldFormatCascade(ref, p));
      return p.value;
    });
  }

  @override
  cvg.CascadeClassifier get ref => ptr.ref;
  static final finalizer =
      OcvFinalizer<cvg.CascadeClassifierPtr>(CFFI.addresses.CascadeClassifier_Close);

  void dispose() {
    finalizer.detach(this);
    CFFI.CascadeClassifier_Close(ptr);
  }

  @override
  List<int> get props => [ptr.address];
}

class HOGDescriptor extends CvStruct<cvg.HOGDescriptor> {
  HOGDescriptor._(cvg.HOGDescriptorPtr ptr, [bool attach = true]) : super.fromPointer(ptr) {
    if (attach) {
      finalizer.attach(this, ptr.cast(), detach: this);
    }
  }

  factory HOGDescriptor.empty() {
    final p = calloc<cvg.HOGDescriptor>();
    cvRun(() => CFFI.HOGDescriptor_New(p));
    return HOGDescriptor._(p);
  }

  /// This is an overloaded member function, provided for convenience. It differs from the above function only in what argument(s) it accepts.
  ///
  /// Creates the HOG descriptor and detector and loads HOGDescriptor parameters and coefficients for the linear SVM classifier from a file.
  ///
  /// https://docs.opencv.org/4.x/d5/d33/structcv_1_1HOGDescriptor.html#a32a635936edaed1b2789caf3dcb09b6e
  factory HOGDescriptor.fromFile(String filename) {
    final p = calloc<cvg.HOGDescriptor>();
    final cp = filename.toNativeUtf8().cast<ffi.Char>();
    cvRun(() => CFFI.HOGDescriptor_NewFromFile(cp, p));
    calloc.free(cp);
    return HOGDescriptor._(p);
  }

  bool load(String name) {
    return using<bool>((arena) {
      final cname = name.toNativeUtf8(allocator: arena);
      final p = arena<ffi.Bool>();
      cvRun(() => CFFI.HOGDescriptor_Load(ref, cname.cast(), p));
      return p.value;
    });
  }

  /// Computes HOG descriptors of given image.
  ///
  /// https://docs.opencv.org/4.x/d5/d33/structcv_1_1HOGDescriptor.html#a38cd712cd5a6d9ed0344731fcd121e8b
  (VecFloat descriptors, VecPoint locations) compute(
    Mat img, {
    Size winStride = (0, 0),
    Size padding = (0, 0),
  }) {
    return using<(VecFloat, VecPoint)>((arena) {
      final descriptors = calloc<cvg.VecFloat>();
      final locations = calloc<cvg.VecPoint>();
      cvRun(
        () => CFFI.HOGDescriptor_Compute(
          ref,
          img.ref,
          descriptors,
          winStride.toSize(arena).ref,
          padding.toSize(arena).ref,
          locations,
        ),
      );
      return (
        VecFloat.fromPointer(descriptors),
        VecPoint.fromPointer(locations),
      );
    });
  }

  /// Computes gradients and quantized gradient orientations.
  ///
  /// https://docs.opencv.org/4.x/d5/d33/structcv_1_1HOGDescriptor.html#a1f76c51c08d69f2b8a0f079efc4bd093
  (Mat grad, Mat angleOfs) computeGradient(
    InputArray img, {
    Size paddingTL = (0, 0),
    Size paddingBR = (0, 0),
  }) {
    return using<(Mat, Mat)>((arena) {
      final grad = Mat.empty();
      final angleOfs = Mat.empty();
      cvRun(
        () => CFFI.HOGDescriptor_computeGradient(
          ref,
          img.ref,
          grad.ref,
          angleOfs.ref,
          paddingTL.toSize(arena).ref,
          paddingBR.toSize(arena).ref,
        ),
      );
      return (grad, angleOfs);
    });
  }

  /// Performs object detection without a multi-scale window.
  ///
  /// https://docs.opencv.org/4.x/d5/d33/structcv_1_1HOGDescriptor.html#a309829908ffaf4645755729d7aa90627
  (VecPoint foundLocations, VecDouble weights, VecPoint searchLocations) detect2(
    InputArray img, {
    double hitThreshold = 0,
    Size winStride = (0, 0),
    Size padding = (0, 0),
  }) {
    return using<(VecPoint, VecDouble, VecPoint)>((arena) {
      final foundLocations = calloc<cvg.VecPoint>();
      final searchLocations = calloc<cvg.VecPoint>();
      final weights = calloc<cvg.VecDouble>();
      cvRun(
        () => CFFI.HOGDescriptor_Detect(
          ref,
          img.ref,
          foundLocations,
          weights,
          hitThreshold,
          winStride.toSize(arena).ref,
          padding.toSize(arena).ref,
          searchLocations,
        ),
      );
      return (
        VecPoint.fromPointer(foundLocations),
        VecDouble.fromPointer(weights),
        VecPoint.fromPointer(searchLocations),
      );
    });
  }

  /// Performs object detection without a multi-scale window.
  ///
  /// https://docs.opencv.org/4.x/d5/d33/structcv_1_1HOGDescriptor.html#a309829908ffaf4645755729d7aa90627
  (VecPoint foundLocations, VecPoint searchLocations) detect(InputArray img,
      {double hitThreshold = 0, Size winStride = (0, 0), Size padding = (0, 0)}) {
    return using<(VecPoint, VecPoint)>((arena) {
      final foundLocations = calloc<cvg.VecPoint>();
      final searchLocations = calloc<cvg.VecPoint>();
      cvRun(
        () => CFFI.HOGDescriptor_Detect2(
          ref,
          img.ref,
          foundLocations,
          hitThreshold,
          winStride.toSize(arena).ref,
          padding.toSize(arena).ref,
          searchLocations,
        ),
      );
      return (VecPoint.fromPointer(foundLocations), VecPoint.fromPointer(searchLocations));
    });
  }

  /// DetectMultiScale calls DetectMultiScale but allows setting parameters
  /// The detected objects are returned as a slice of image.Rectangle structs.
  ///
  /// For further details, please see:
  /// https://docs.opencv.org/master/d5/d33/structcv_1_1HOGDescriptor.html#a660e5cd036fd5ddf0f5767b352acd948
  VecRect detectMultiScale(
    InputArray image, {
    double hitThreshold = 0,
    int minNeighbors = 3,
    Size winStride = (0, 0),
    Size padding = (0, 0),
    double scale = 1.05,
    double groupThreshold = 2.0,
    bool useMeanshiftGrouping = false,
  }) {
    return using<VecRect>((arena) {
      final rects = calloc<cvg.VecRect>();
      cvRun(
        () => CFFI.HOGDescriptor_DetectMultiScaleWithParams(
          ref,
          image.ref,
          hitThreshold,
          winStride.toSize(arena).ref,
          padding.toSize(arena).ref,
          scale,
          groupThreshold,
          useMeanshiftGrouping,
          rects,
        ),
      );
      return VecRect.fromPointer(rects);
    });
  }

  /// HOGDefaultPeopleDetector returns a new Mat with the HOG DefaultPeopleDetector.
  ///
  /// For further details, please see:
  /// https://docs.opencv.org/master/d5/d33/structcv_1_1HOGDescriptor.html#a660e5cd036fd5ddf0f5767b352acd948
  static VecFloat getDefaultPeopleDetector() {
    final v = calloc<cvg.VecFloat>();
    cvRun(() => CFFI.HOG_GetDefaultPeopleDetector(v));
    return VecFloat.fromPointer(v);
  }

  static VecFloat getDaimlerPeopleDetector() {
    final v = calloc<cvg.VecFloat>();
    cvRun(() => CFFI.HOGDescriptor_getDaimlerPeopleDetector(v));
    return VecFloat.fromPointer(v);
  }

  int getDescriptorSize() {
    return using<int>((arena) {
      final p = arena<ffi.Size>();
      cvRun(() => CFFI.HOGDescriptor_getDescriptorSize(ref, p));
      return p.value;
    });
  }

  /// Returns winSigma value.
  double getWinSigma() {
    return using<double>((arena) {
      final p = arena<ffi.Double>();
      cvRun(() => CFFI.HOGDescriptor_getWinSigma(ref, p));
      return p.value;
    });
  }

  /// Groups the object candidate rectangles.
  ///
  /// https://docs.opencv.org/4.x/d5/d33/structcv_1_1HOGDescriptor.html#ad7c9679b23e8476e332e9114181d656d
  (VecRect rectList, VecDouble weights) groupRectangles(
    VecRect rectList,
    VecDouble weights,
    int groupThreshold,
    double eps,
  ) {
    cvRun(
      () => CFFI.HOGDescriptor_groupRectangles(
        ref,
        rectList.ref,
        weights.ref,
        groupThreshold,
        eps,
      ),
    );
    return (rectList, weights);
  }

  /// SetSVMDetector sets the data for the HOGDescriptor.
  ///
  /// For further details, please see:
  /// https://docs.opencv.org/master/d5/d33/structcv_1_1HOGDescriptor.html#a09e354ad701f56f9c550dc0385dc36f1
  void setSVMDetector(VecFloat det) {
    cvRun(() => CFFI.HOGDescriptor_SetSVMDetector(ref, det.ref));
  }

  @override
  cvg.HOGDescriptor get ref => ptr.ref;
  static final finalizer = OcvFinalizer<cvg.HOGDescriptorPtr>(CFFI.addresses.HOGDescriptor_Close);

  void dispose() {
    finalizer.detach(this);
    CFFI.HOGDescriptor_Close(ptr);
  }

  @override
  List<int> get props => [ptr.address];
}

// GroupRectangles groups the object candidate rectangles.
//
// For further details, please see:
// https://docs.opencv.org/master/d5/d54/group__objdetect.html#ga3dba897ade8aa8227edda66508e16ab9
VecRect groupRectangles(VecRect rects, int groupThreshold, double eps) {
  cvRun(() => CFFI.GroupRectangles(rects.ref, groupThreshold, eps));
  return rects;
}

// QRCodeDetector groups the object candidate rectangles.
//
// For further details, please see:
// https://docs.opencv.org/master/de/dc3/classcv_1_1QRCodeDetector.html
class QRCodeDetector extends CvStruct<cvg.QRCodeDetector> {
  QRCodeDetector._(cvg.QRCodeDetectorPtr ptr, [bool attach = true]) : super.fromPointer(ptr) {
    if (attach) {
      finalizer.attach(this, ptr.cast(), detach: this);
    }
  }

  factory QRCodeDetector.empty() {
    final p = calloc<cvg.QRCodeDetector>();
    cvRun(() => CFFI.QRCodeDetector_New(p));
    return QRCodeDetector._(p);
  }

  /// Decodes QR code on a curved surface in image once it's found by the detect() method.
  ///
  /// Returns UTF8-encoded output string or empty string if the code cannot be decoded.
  ///
  /// https://docs.opencv.org/4.x/de/dc3/classcv_1_1QRCodeDetector.html#ac7e9526c748b04186a6aa179f56096cf
  (String rval, Mat straightQRcode) decodeCurved(
    InputArray img,
    VecPoint points, {
    OutputArray? straightQRcode,
  }) {
    final s = straightQRcode?.ptr ?? calloc<cvg.Mat>();
    final v = calloc<ffi.Pointer<ffi.Char>>();
    cvRun(() => CFFI.QRCodeDetector_decodeCurved(ref, img.ref, points.ref, s, v));
    final ss = v.value.cast<Utf8>().toDartString();
    calloc.free(v);
    return (ss, Mat.fromPointer(s));
  }

  /// Both detects and decodes QR code on a curved surface.
  ///
  /// https://docs.opencv.org/4.x/de/dc3/classcv_1_1QRCodeDetector.html#a9166527f6e20b600ed6a53ab3dd61f51
  (String rval, VecPoint points, Mat straightQRcode) detectAndDecodeCurved(
    InputArray img, {
    VecPoint? points,
    Mat? straightQRcode,
  }) {
    final p = points?.ptr ?? calloc<cvg.VecPoint>();
    final s = straightQRcode?.ptr ?? calloc<cvg.Mat>();
    final v = calloc<ffi.Pointer<ffi.Char>>();
    cvRun(() => CFFI.QRCodeDetector_detectAndDecodeCurved(ref, img.ref, p, s, v));
    final ss = v.value.cast<Utf8>().toDartString();
    calloc.free(v);
    return (ss, points ?? VecPoint.fromPointer(p), Mat.fromPointer(s));
  }

  /// DetectAndDecode Both detects and decodes QR code.
  ///
  /// Returns true as long as some QR code was detected even in case where the decoding failed
  /// For further details, please see:
  /// https://docs.opencv.org/master/de/dc3/classcv_1_1QRCodeDetector.html#a7290bd6a5d59b14a37979c3a14fbf394
  (String ret, VecPoint points, Mat straightCode) detectAndDecode(
    InputArray img, {
    VecPoint? points,
    OutputArray? straightCode,
  }) {
    final code = straightCode?.ptr ?? calloc<cvg.Mat>();
    final points = calloc<cvg.VecPoint>();
    final v = calloc<cvg.VecChar>();
    cvRun(() => CFFI.QRCodeDetector_DetectAndDecode(ref, img.ref, points, code, v));
    final s = v == ffi.nullptr ? "" : VecChar.fromPointer(v).toString();
    return (s, VecPoint.fromPointer(points), Mat.fromPointer(code));
  }

  /// Detect detects QR code in image and returns the quadrangle containing the code.
  ///
  /// For further details, please see:
  /// https://docs.opencv.org/master/de/dc3/classcv_1_1QRCodeDetector.html#a64373f7d877d27473f64fe04bb57d22b
  (bool ret, VecPoint points) detect(InputArray input, {VecPoint? points}) {
    return cvRunArena<(bool, VecPoint)>((arena) {
      final pts = calloc<cvg.VecPoint>();
      final ret = arena<ffi.Bool>();
      cvRun(() => CFFI.QRCodeDetector_Detect(ref, input.ref, pts, ret));
      return (ret.value, VecPoint.fromPointer(pts));
    });
  }

  /// Decode decodes QR code in image once it's found by the detect() method. Returns UTF8-encoded output string or empty string if the code cannot be decoded.
  ///
  /// For further details, please see:
  /// https://docs.opencv.org/master/de/dc3/classcv_1_1QRCodeDetector.html#a4172c2eb4825c844fb1b0ae67202d329
  (String ret, VecPoint? points, Mat? straightCode) decode(
    InputArray img, {
    VecPoint? points,
    Mat? straightCode,
  }) {
    return cvRunArena<(String, VecPoint?, Mat?)>((arena) {
      points ??= VecPoint();
      final ret = VecChar();
      straightCode ??= Mat.empty();
      cvRun(
          () => CFFI.QRCodeDetector_Decode(ref, img.ref, points!.ref, straightCode!.ref, ret.ptr));
      return (ret.toString(), points, straightCode!);
    });
  }

  /// Detects QR codes in image and finds of the quadrangles containing the codes.
  ///
  /// Each quadrangle would be returned as a row in the `points` Mat and each point is a Vecf.
  /// Returns true if QR code was detected
  /// For usage please see TestQRCodeDetector
  /// For further details, please see:
  /// https://docs.opencv.org/master/de/dc3/classcv_1_1QRCodeDetector.html#aaf2b6b2115b8e8fbc9acf3a8f68872b6
  (bool, VecPoint? points) detectMulti(InputArray img, {VecPoint? points}) {
    return cvRunArena<(bool, VecPoint?)>((arena) {
      points ??= VecPoint.fromList([]);
      final ret = arena<ffi.Bool>();
      cvRun(() => CFFI.QRCodeDetector_DetectMulti(ref, img.ref, points!.ref, ret));
      return ret.value ? (ret.value, VecPoint.fromVec(points!.ref)) : (ret.value, null);
    });
  }

  /// Detects QR codes in image, finds the quadrangles containing the codes, and decodes the QRCodes to strings.
  ///
  /// Each quadrangle would be returned as a row in the `points` Mat and each point is a Vecf.
  /// Returns true as long as some QR code was detected even in case where the decoding failed
  /// For usage please see TestQRCodeDetector
  /// For further details, please see:
  /// https://docs.opencv.org/master/de/dc3/classcv_1_1QRCodeDetector.html#a188b63ffa17922b2c65d8a0ab7b70775
  (bool, List<String>, VecPoint, VecMat) detectAndDecodeMulti(InputArray img) {
    final info = calloc<cvg.VecVecChar>();
    final points = calloc<cvg.VecPoint>();
    final codes = calloc<cvg.VecMat>();
    final rval = calloc<ffi.Bool>();
    cvRun(() => CFFI.QRCodeDetector_DetectAndDecodeMulti(ref, img.ref, info, points, codes, rval));
    final ret = (
      rval.value,
      VecVecChar.fromPointer(info).asStringList(),
      VecPoint.fromPointer(points),
      VecMat.fromPointer(codes),
    );
    calloc.free(rval);
    return ret;
  }

  void setEpsX(double epsX) {
    cvRun(() => CFFI.QRCodeDetector_setEpsX(ref, epsX));
  }

  void setEpsY(double epsY) {
    cvRun(() => CFFI.QRCodeDetector_setEpsY(ref, epsY));
  }

  void setUseAlignmentMarkers(bool useAlignmentMarkers) {
    cvRun(() => CFFI.QRCodeDetector_setUseAlignmentMarkers(ref, useAlignmentMarkers));
  }

  static final finalizer = OcvFinalizer<cvg.QRCodeDetectorPtr>(CFFI.addresses.QRCodeDetector_Close);

  void dispose() {
    finalizer.detach(this);
    CFFI.QRCodeDetector_Close(ptr);
  }

  @override
  cvg.QRCodeDetector get ref => ptr.ref;
  @override
  List<int> get props => [ptr.address];
}
