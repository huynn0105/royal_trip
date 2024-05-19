import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import 'app_layout.dart';
import 'colors.dart';
import 'rounded_linear_progress.dart';
import 'textstyle.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    Key? key,
    this.backgroundColor = Colors.transparent,
    this.isFullScreen = false,
  })  : isDark = false,
        showText = false,
        super(key: key);

  const LoadingWidget.dark({
    Key? key,
    this.backgroundColor = UIColors.blurBackground,
    this.isFullScreen = false,
  })  : isDark = true,
        showText = true,
        super(key: key);

  const LoadingWidget.withoutText({
    Key? key,
    this.backgroundColor = Colors.transparent,
    this.isFullScreen = false,
  })  : isDark = false,
        showText = false,
        super(key: key);

  final bool isDark;
  final bool showText;
  final Color backgroundColor;
  final bool isFullScreen;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned.fill(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
          ),
        ),
        Container(
          alignment: isFullScreen ? null : const FractionalOffset(0.5, 0.5),
          child: Container(
            width: isFullScreen ? double.infinity : null,
            height: isFullScreen ? double.infinity : null,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: isFullScreen ? null : BorderRadius.circular(16),
            ),
            child: Material(
              elevation: 0,
              color: Colors.transparent,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (kIsWeb)
                    LoadingAnimationWidget.inkDrop(
                      color: Colors.white,
                      size: 60,
                    ),
                  if (showText)
                    const SizedBox(
                      height: 16,
                    ),
                  if (showText)
                    Text(
                      'Hệ thống đang xử lý,\nvui lòng không thoát lúc này',
                      textAlign: TextAlign.center,
                      style: UITextStyles.regular(16).copyWith(
                        color: isDark ? UIColors.white : UIColors.defaultText,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class LinearProgressWidget extends StatelessWidget {
  const LinearProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 4,
      child: AppLayout(
        color: Colors.transparent,
        child: RoundedLinearProgress(
          width: double.infinity,
          strokeWidth: 4,
          bgColor: UIColors.gray,
          fgColor: UIColors.primaryColor,
          duration: Duration(seconds: 2),
        ),
      ),
    );
  }
}

class CircleProgressWidget extends StatelessWidget {
  const CircleProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return const Center(
        child: SizedBox(
          width: 16,
          height: 16,
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
              UIColors.primaryColor,
            ),
            strokeWidth: 2,
          ),
        ),
      );
    }
    return const CupertinoActivityIndicator();
  }
}
