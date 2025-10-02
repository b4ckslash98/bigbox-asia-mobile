import 'dart:async';
import 'dart:developer';

import 'package:bigbox_asia/lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easy_dialogs/flutter_easy_dialogs.dart';
import 'package:lottie/lottie.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class AppDialog {
  static final ValueNotifier<double> _valueNotifier =
      ValueNotifier<double>(0.0);
  static Future<void> loading({
    String? message,
    double? value,
  }) async {
    Future.microtask(
      () {
        final context = router.navigatorKey.currentContext!;
        _valueNotifier.value = 0.0;
        if (value != null) {
          _valueNotifier.value = value;
          final contains =
              FlutterEasyDialogs.get(FullScreenDialog.defaultId).isShown;
          if (contains) {
            return;
          }
        }

        if (context.mounted) {
          FlutterEasyDialogs.show<FullScreenDialog>(
            Container(
              width: context.sizeWidth,
              height: context.sizeHeight,
              color: Colors.black.withValues(alpha: 0.5),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: context.canvasColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Replace CircularProgressIndicator with Lottie animation
                      SizedBox(
                        width: 40,
                        height: 40,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage:
                              AssetImage('assets/logo_text_transparent.png'),
                        ),
                      ),
                      if (message != null && message.isNotEmpty) ...[
                        const SizedBox(height: 8),
                        Text(
                          message,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            )
                .fullScreen(autoHideDuration: null)
                .fade()
                .animatedTap()
                .fadeBackground(),
          );
        }
      },
    );
  }

  static Future<void> hideLoading() async {
    Future.microtask(() {
      FlutterEasyDialogs.hide(id: FullScreenDialog.defaultId);
    });
  }

  static Future<void> error(String message) async {
    Completer<void> completer = Completer();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        final context = router.navigatorKey.currentContext!;
        await FlutterEasyDialogs.show<FullScreenDialog>(EasyDialog.fullScreen(
          content: Container(
            width: context.sizeWidth,
            height: context.sizeHeight,
            color: Colors.black.withValues(alpha: 0.5),
            child: Center(
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.all(32),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: context.canvasColor,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    PhosphorIcon(
                      PhosphorIcons.xCircle(PhosphorIconsStyle.duotone),
                      size: 24,
                      color: context.colorScheme.error,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      message,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.all(8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          // backgroundColor: context.colorScheme.errorContainer,
                          foregroundColor: context.colorScheme.error,
                        ),
                        onPressed: () {
                          FlutterEasyDialogs.hide(
                              id: FullScreenDialog.defaultId);
                        },
                        child: const Text('Close',
                            style: TextStyle(fontSize: 14, height: 1)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
        completer.complete();
      },
    );
    await completer.future;
  }

  static Future<void> info(String message, {String? title}) async {
    Completer<void> completer = Completer();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        final context = router.navigatorKey.currentContext!;
        await FlutterEasyDialogs.show<FullScreenDialog>(
          EasyDialog.fullScreen(
                  content: _dialogWidget(
            context,
            [
              Text(
                title ?? 'Info',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(message, textAlign: TextAlign.left),
              const SizedBox(height: 16),
              SizedBox(
                height: 32,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        padding: EdgeInsets.all(8),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                          side: BorderSide(
                            color: context.textColor ?? Colors.indigo,
                            strokeAlign: BorderSide.strokeAlignInside,
                            width: .5,
                          ),
                        ),
                        foregroundColor: context.textColor,
                        textStyle: const TextStyle(
                          fontSize: 14,
                          height: 1,
                        ),
                      ),
                      onPressed: () {
                        FlutterEasyDialogs.hide(id: FullScreenDialog.defaultId);
                      },
                      child: const Text('Close'),
                    ),
                  ],
                ),
              ),
            ],
          ))
              .fade()
              .slideVertical()
              .swipe(direction: DismissDirection.up)
              .fadeBackground(
                backgroundColor: Colors.black.withValues(alpha: 0.5),
                blur: 0.0,
              ),
        );
        completer.complete();
      },
    );
    await completer.future;
  }

  static Future<bool?> confirm(String message,
      {String? yesText, String? noText}) async {
    final context = router.navigatorKey.currentContext!;
    return (await FlutterEasyDialogs.show<bool>(
      EasyDialog.fullScreen(
        animationConfiguration: const EasyDialogAnimationConfiguration.bounded(
          duration: Duration(milliseconds: 300),
        ),
        content: _dialogWidget(
          context,
          [
            const Text(
              'Confirm',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(message, textAlign: TextAlign.left),
            const SizedBox(height: 16),
            SizedBox(
              height: 32,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 4),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                        side: const BorderSide(
                          color: Colors.indigo,
                          width: .5,
                          strokeAlign: BorderSide.strokeAlignInside,
                        ),
                      ),
                      foregroundColor: Colors.indigo,
                      textStyle: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    onPressed: () {
                      FlutterEasyDialogs.hide(
                          id: FullScreenDialog.defaultId, result: false);
                    },
                    child: Text(noText ?? 'No'),
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 4),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      backgroundColor: Colors.indigo,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      textStyle: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    onPressed: () {
                      FlutterEasyDialogs.hide(
                          id: FullScreenDialog.defaultId, result: true);
                    },
                    child: Text(yesText ?? 'Yes'),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
          .fade(
            curve: Curves.easeInOut,
          )
          .fadeBackground(
            backgroundColor: Colors.black.withValues(alpha: 0.5),
            curve: Curves.easeInOut,
            blur: 0.0,
          ),
    ));
  }

  static Widget _dialogWidget(BuildContext context, List<Widget> contents) {
    return GestureDetector(
      onTap: () {
        FlutterEasyDialogs.hide(id: FullScreenDialog.defaultId);
      },
      child: Container(
        width: context.sizeWidth,
        height: context.sizeHeight,
        color: Colors.transparent,
        child: Center(
          child: Container(
            // little bit to the top like .4 of the screen
            margin: EdgeInsets.only(bottom: context.sizeHeight * .2),
            child: GestureDetector(
              onTap: () {
                /// jangan dihilangkan untuk disable click disini
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                margin: const EdgeInsets.all(32),
                decoration: BoxDecoration(
                  color: context.canvasColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ...contents,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  static Future<void> showAlert(String title, String content,
      {Map<String, Function> listAction = const {}}) {
    final context = router.navigatorKey.currentContext!;
    List<Widget> lstAction = [];
    if (listAction.keys.toList().isEmpty) {
      lstAction.add(MaterialButton(
        child: const Text('Close'),
        onPressed: () {
          try {
            Navigator.of(context).pop();
          } catch (ex) {
            log(ex.toString());
          }
        },
      ));
    } else {
      listAction.forEach((key, value) {
        lstAction.add(MaterialButton(
          child: Text(key),
          onPressed: () {
            value.call();
          },
        ));
      });
    }
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return MediaQuery(
          data: const MediaQueryData(textScaler: TextScaler.linear(1)),
          child: AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: lstAction,
          ),
        );
      },
    );
  }
}
// import 'dart:async';
// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter_easy_dialogs/flutter_easy_dialogs.dart';
// import 'package:lottie/lottie.dart';
// import 'package:phosphor_flutter/phosphor_flutter.dart';

// import '../../../router/router.dart';
// import 'extensions/context_extension.dart';

// class AppDialog {
//   // Track dialog state
//   static bool _isDialogVisible = false;
//   static String? _currentDialogId;
//   static Timer? _debounceTimer;
//   static final ValueNotifier<double> _valueNotifier =
//       ValueNotifier<double>(0.0);

//   // Debounce dialog operations to prevent rapid show/hide cycles
//   static Future<void> _debounce(Future<void> Function() operation) async {
//     _debounceTimer?.cancel();
//     _debounceTimer = Timer(const Duration(milliseconds: 50), () async {
//       try {
//         await operation();
//       } catch (e) {
//         log('Dialog operation failed: $e');
//       }
//     });
//   }

//   // Safe show dialog implementation
//   static Future<void> _safeShowDialog<T>({
//     required Widget dialog,
//     required String dialogId,
//     bool showFade = true,
//     bool showBackground = true,
//   }) async {
//     // Hide any existing dialog first
//     await _safeHideDialog();

//     // Set state tracking
//     _isDialogVisible = true;
//     _currentDialogId = dialogId;

//     // Show the dialog - must wrap in EasyDialog.fullScreen first
//     var easyDialog = EasyDialog.fullScreen(content: dialog);

//     // Then apply modifiers
//     if (showFade) {
//       easyDialog = easyDialog.fade(curve: Curves.easeInOut);
//     }

//     if (showBackground) {
//       easyDialog = easyDialog.fadeBackground(
//         backgroundColor: Colors.black.withValues(alpha: 0.5),
//         blur: 0.0,
//       );
//     }

//     // Show the dialog
//     FlutterEasyDialogs.show<T>(easyDialog);
//   }

//   // Safe hide dialog implementation
//   static Future<void> _safeHideDialog() async {
//     if (!_isDialogVisible) return;

//     try {
//       // Reset state first
//       _isDialogVisible = false;
//       final tempId = _currentDialogId;
//       _currentDialogId = null;

//       // Hide dialog
//       if (tempId != null) {
//         FlutterEasyDialogs.hide(id: tempId);
//       }
//     } catch (e) {
//       log('Error hiding dialog: $e');
//     }
//   }

//   // LOADING DIALOG
//   static Future<void> loading({
//     String? message,
//     double? value,
//   }) async {
//     // Update value immediately if provided
//     if (value != null) {
//       _valueNotifier.value = value;

//       // If already showing, just update the value
//       if (_isDialogVisible && _currentDialogId == FullScreenDialog.defaultId) {
//         return;
//       }
//     } else {
//       _valueNotifier.value = 0.0;
//     }

//     await _debounce(() async {
//       final context = router.navigatorKey.currentContext;
//       if (context == null || !context.mounted) return;

//       await _safeShowDialog<FullScreenDialog>(
//         dialogId: FullScreenDialog.defaultId,
//         dialog: Container(
//           width: context.sizeWidth,
//           height: context.sizeHeight,
//           color: Colors.transparent,
//           child: Center(
//             child: Container(
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: context.canvasColor,
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withValues(0.1),
//                     blurRadius: 12,
//                     spreadRadius: 2,
//                   ),
//                 ],
//               ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   SizedBox(
//                     width: 40,
//                     height: 40,
//                     child: Lottie.asset(
//                       'assets/lottie/onanLoading.json',
//                       fit: BoxFit.contain,
//                       frameRate:
//                           FrameRate(30), // Reduced for better performance
//                       options: LottieOptions(
//                         enableMergePaths: true,
//                       ),
//                     ),
//                   ),
//                   if (message != null && message.isNotEmpty) ...[
//                     const SizedBox(height: 8),
//                     Text(
//                       message,
//                       textAlign: TextAlign.center,
//                     ),
//                   ],
//                 ],
//               ),
//             ),
//           ),
//         ),
//       );
//     });
//   }

//   static Future<void> hideLoading() async {
//     _debounceTimer?.cancel();

//     // Only attempt to hide if we believe a dialog is showing
//     if (_isDialogVisible) {
//       try {
//         // Reset state first
//         final tempId = _currentDialogId;
//         _isDialogVisible = false;
//         _currentDialogId = null;

//         // Hide dialog if exists
//         if (tempId != null) {
//           FlutterEasyDialogs.hide(id: tempId);
//         }
//       } catch (e) {
//         log('Error hiding dialog: $e');
//       }
//     }
//   }

//   // ERROR DIALOG
//   static Future<void> error(String message) async {
//     // Make sure to hide loading first
//     await hideLoading();

//     Completer<void> completer = Completer();

//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
//       try {
//         final context = router.navigatorKey.currentContext;
//         if (context == null || !context.mounted) {
//           completer.complete();
//           return;
//         }

//         await _safeShowDialog<FullScreenDialog>(
//           dialogId: FullScreenDialog.defaultId,
//           dialog: Container(
//             width: context.sizeWidth,
//             height: context.sizeHeight,
//             color: Colors.transparent,
//             child: Center(
//               child: Container(
//                 width: double.infinity,
//                 margin: const EdgeInsets.all(32),
//                 padding: const EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: context.canvasColor,
//                   borderRadius: BorderRadius.circular(8),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withValues(0.1),
//                       blurRadius: 12,
//                       spreadRadius: 2,
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     PhosphorIcon(
//                       PhosphorIcons.xCircle(PhosphorIconsStyle.duotone),
//                       size: 24,
//                       color: context.colorScheme.error,
//                     ),
//                     const SizedBox(height: 16),
//                     Text(
//                       message,
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(height: 16),
//                     SizedBox(
//                       width: double.infinity,
//                       child: TextButton(
//                         style: TextButton.styleFrom(
//                           padding: const EdgeInsets.all(12),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(4),
//                           ),
//                           foregroundColor: context.colorScheme.error,
//                         ),
//                         onPressed: () {
//                           _safeHideDialog();
//                         },
//                         child: const Text('Close',
//                             style: TextStyle(fontSize: 14, height: 1)),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         );
//       } catch (e) {
//         log('Error showing error dialog: $e');
//       } finally {
//         completer.complete();
//       }
//     });

//     await completer.future;
//   }

//   // INFO DIALOG
//   static Future<void> info(String message, {String? title}) async {
//     await hideLoading();

//     Completer<void> completer = Completer();

//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
//       try {
//         final context = router.navigatorKey.currentContext;
//         if (context == null || !context.mounted) {
//           completer.complete();
//           return;
//         }

//         await _safeShowDialog<FullScreenDialog>(
//           dialogId: FullScreenDialog.defaultId,
//           dialog: _dialogWidget(
//             context,
//             [
//               Text(
//                 title ?? 'Info',
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 8),
//               Text(message, textAlign: TextAlign.left),
//               const SizedBox(height: 16),
//               SizedBox(
//                 height: 32,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     TextButton(
//                       style: TextButton.styleFrom(
//                         backgroundColor: Colors.transparent,
//                         elevation: 0,
//                         padding: const EdgeInsets.all(8),
//                         tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(4),
//                           side: BorderSide(
//                             color: context.textColor ?? Colors.indigo,
//                             strokeAlign: BorderSide.strokeAlignInside,
//                             width: .5,
//                           ),
//                         ),
//                         foregroundColor: context.textColor,
//                         textStyle: const TextStyle(
//                           fontSize: 14,
//                           height: 1,
//                         ),
//                       ),
//                       onPressed: () {
//                         _safeHideDialog();
//                       },
//                       child: const Text('Close'),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         );
//       } catch (e) {
//         log('Error showing info dialog: $e');
//       } finally {
//         completer.complete();
//       }
//     });

//     await completer.future;
//   }

//   // CONFIRM DIALOG
//   static Future<bool?> confirm(String message,
//       {String? yesText, String? noText}) async {
//     await hideLoading();

//     try {
//       final context = router.navigatorKey.currentContext;
//       if (context == null || !context.mounted) return null;

//       return await FlutterEasyDialogs.show<bool>(
//         EasyDialog.fullScreen(
//           animationConfiguration:
//               const EasyDialogAnimationConfiguration.bounded(
//             duration: Duration(milliseconds: 300),
//           ),
//           content: _dialogWidget(
//             context,
//             [
//               const Text(
//                 'Confirm',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 8),
//               Text(message, textAlign: TextAlign.left),
//               const SizedBox(height: 16),
//               SizedBox(
//                 height: 32,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     TextButton(
//                       style: TextButton.styleFrom(
//                         backgroundColor: Colors.transparent,
//                         elevation: 0,
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 16, vertical: 4),
//                         tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(4),
//                           side: const BorderSide(
//                             color: Colors.indigo,
//                             width: .5,
//                             strokeAlign: BorderSide.strokeAlignInside,
//                           ),
//                         ),
//                         foregroundColor: Colors.indigo,
//                         textStyle: const TextStyle(
//                           fontSize: 14,
//                         ),
//                       ),
//                       onPressed: () {
//                         try {
//                           FlutterEasyDialogs.hide(
//                               id: FullScreenDialog.defaultId, result: false);
//                           _isDialogVisible = false;
//                           _currentDialogId = null;
//                         } catch (e) {
//                           log('Error hiding confirm dialog: $e');
//                         }
//                       },
//                       child: Text(noText ?? 'No'),
//                     ),
//                     const SizedBox(width: 8),
//                     TextButton(
//                       style: TextButton.styleFrom(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 16, vertical: 4),
//                         tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                         backgroundColor: Colors.indigo,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(4),
//                         ),
//                         foregroundColor: Colors.white,
//                         elevation: 0,
//                         textStyle: const TextStyle(
//                           fontSize: 14,
//                         ),
//                       ),
//                       onPressed: () {
//                         try {
//                           FlutterEasyDialogs.hide(
//                               id: FullScreenDialog.defaultId, result: true);
//                           _isDialogVisible = false;
//                           _currentDialogId = null;
//                         } catch (e) {
//                           log('Error hiding confirm dialog: $e');
//                         }
//                       },
//                       child: Text(yesText ?? 'Yes'),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         )
//             .fade(
//               curve: Curves.easeInOut,
//             )
//             .fadeBackground(
//               backgroundColor: Colors.black.withValues(alpha: 0.5),
//               curve: Curves.easeInOut,
//               blur: 0.0,
//             ),
//       );
//     } catch (e) {
//       log('Error showing confirm dialog: $e');
//       return null;
//     }
//   }

//   static Widget _dialogWidget(BuildContext context, List<Widget> contents) {
//     return GestureDetector(
//       onTap: () {
//         _safeHideDialog();
//       },
//       child: Container(
//         width: context.sizeWidth,
//         height: context.sizeHeight,
//         color: Colors.transparent,
//         child: Center(
//           child: Container(
//             // little bit to the top like .4 of the screen
//             margin: EdgeInsets.only(bottom: context.sizeHeight * .2),
//             child: GestureDetector(
//               onTap: () {
//                 /// jangan dihilangkan untuk disable click disini
//               },
//               child: Container(
//                 width: double.infinity,
//                 padding: const EdgeInsets.all(24),
//                 margin: const EdgeInsets.all(32),
//                 decoration: BoxDecoration(
//                   color: context.canvasColor,
//                   borderRadius: BorderRadius.circular(6),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withValues(0.1),
//                       blurRadius: 12,
//                       spreadRadius: 2,
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     ...contents,
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   static Future<void> showAlert(String title, String content,
//       {Map<String, Function> listAction = const {}}) async {
//     await hideLoading();

//     try {
//       final context = router.navigatorKey.currentContext;
//       if (context == null || !context.mounted) return;

//       List<Widget> lstAction = [];
//       if (listAction.keys.toList().isEmpty) {
//         lstAction.add(MaterialButton(
//           child: const Text('Close'),
//           onPressed: () {
//             try {
//               Navigator.of(context).pop();
//             } catch (ex) {
//               log(ex.toString());
//             }
//           },
//         ));
//       } else {
//         listAction.forEach((key, value) {
//           lstAction.add(MaterialButton(
//             child: Text(key),
//             onPressed: () {
//               value.call();
//             },
//           ));
//         });
//       }

//       await showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           // return object of type Dialog
//           return MediaQuery(
//             data: const MediaQueryData(textScaler: TextScaler.linear(1)),
//             child: AlertDialog(
//               title: Text(title),
//               content: Text(content),
//               actions: lstAction,
//             ),
//           );
//         },
//       );
//     } catch (e) {
//       log('Error showing alert: $e');
//     }
//   }
// }
