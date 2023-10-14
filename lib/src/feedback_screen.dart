import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:user_feedback/src/add_user_feedback_request.dart';
import 'package:user_feedback/src/feedback_category.dart';
import 'package:user_feedback/src/feedback_service.dart';
import 'package:uuid/uuid.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({
    super.key,
    required this.feedbackService,
    required this.appName,
    this.onCloseTap,
    this.onSendFinish,
    this.username,
    this.userId,
  });

  final void Function(void)? onCloseTap;
  final void Function(void)? onSendFinish;
  final FeedbackService feedbackService;
  final String appName;
  final String? username;
  final String? userId;

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  final TextEditingController _textEditingController = TextEditingController();

  FeedbackCategory selectedCategory = FeedbackCategory.bug;
  List<XFile> imageFileList = [];

  static const maxImages = 5;

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).dividerColor,
      child: Stack(
        children: [
          Container(
            color: Theme.of(context).cardColor,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (_isLoading)
                  const LinearProgressIndicator()
                else
                  const SizedBox(height: 4),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const SizedBox(width: 16),
                    Text(
                      '의견 보내기',
                      style: TextStyle(
                        fontSize: 19,
                        color: Theme.of(context).textTheme.displaySmall?.color,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    IconButton(
                      onPressed: () {
                        widget.onCloseTap?.call(null);
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.close,
                        color: Theme.of(context).textTheme.displaySmall?.color,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const SizedBox(width: 16),
                    Expanded(
                      child: buildCategoryButton(
                        context,
                        category: FeedbackCategory.bug,
                        isSelected: selectedCategory == FeedbackCategory.bug,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: buildCategoryButton(
                        context,
                        category: FeedbackCategory.enhancement,
                        isSelected:
                            selectedCategory == FeedbackCategory.enhancement,
                      ),
                    ),
                    const SizedBox(width: 16),
                  ],
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Scrollbar(
                    thickness: 1,
                    radius: const Radius.circular(1),
                    child: ScrollConfiguration(
                      behavior:
                          const ScrollBehavior().copyWith(overscroll: false),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: TextFormField(
                          autofocus: true,
                          minLines: 3,
                          maxLines: 10,
                          controller: _textEditingController,
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    height: 1.5,
                                  ),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(16),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            filled: true,
                            // fillColor: Theme.of(context).canvasColor,
                            hintText: '내용을 입력해주세요',
                            hintStyle: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  height: 1.5,
                                  color: Theme.of(context).dividerColor,
                                ),
                          ),
                          maxLength: 200,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                if (imageFileList.isNotEmpty)
                  buildImageListView()
                else
                  const SizedBox(),
                const SizedBox(height: 12),
                Row(
                  children: [
                    const SizedBox(width: 16),
                    buildImageAddButton(),
                    const Expanded(child: SizedBox()),
                    RoundedButton(
                      child: Text(
                        '작성하기',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                      ),
                      onTap: _onSendTap,
                    ),
                    const SizedBox(width: 16),
                  ],
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImageAddButton() {
    return InkWell(
      onTap: () async {
        if (imageFileList.length == maxImages) {
          await Fluttertoast.showToast(msg: '$maxImages개가 최대입니다.');
          return;
        }
        final newImages = await ImagePicker().pickMultiImage(
          maxWidth: 800,
          maxHeight: 800,
        );
        setState(() {
          imageFileList.addAll(newImages);
        });
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.add_a_photo),
          ),
          // icon: Assets.icons.addPhotoAlternate.svg(color: Colors.grey),
          // icon: SvgPicture.asset('assets/icons/add_photo_alternate.svg'),

          Text(
            '사진 (${imageFileList.length}/$maxImages)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  Widget buildImageListView() {
    final listLength = imageFileList.length;
    return SizedBox(
      height: 96,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: listLength,
        itemBuilder: (context, index) {
          final image = Stack(
            alignment: Alignment.topRight,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.file(
                  File(imageFileList[index].path),
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    imageFileList.removeAt(index);
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black.withOpacity(0.2),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.close_rounded,
                        color: Colors.white,
                        size: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 16 : 0,
              right: index == listLength - 1 ? 16 : 0,
            ),
            child: image,
          );
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          width: 8,
        ),
      ),
    );
  }

  Widget buildCategoryButton(
    BuildContext context, {
    required FeedbackCategory category,
    required bool isSelected,
  }) {
    var text = '';
    switch (category) {
      case FeedbackCategory.enhancement:
        text = '🙏 서비스 제안';
      case FeedbackCategory.bug:
        text = '🚨 오류 신고';
    }
    var contentColor = Theme.of(context).disabledColor;
    if (isSelected) {
      contentColor = Theme.of(context).primaryColor;
    }
    return InkWell(
      splashColor: Theme.of(context).primaryColor.withOpacity(0.1),
      onTap: () {
        setState(() {
          selectedCategory = category;
        });
      },
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: contentColor),
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: contentColor,
                ),
          ),
        ),
      ),
    );
  }

  Future<void> _onSendTap() async {
    try {
      setState(() {
        _isLoading = true;
      });

      final body = _textEditingController.text.trim();
      if (body.isEmpty) {
        await Fluttertoast.showToast(msg: '내용을 입력 해주세요.');
        return;
      }
      final fileList = imageFileList.map((e) => File(e.path)).toList();

      final feedback = AddUserFeedbackRequest(
        id: const Uuid().v4(),
        appName: widget.appName,
        body: body,
        category: selectedCategory,
        imageUrls: [],
      );

      final imageUrls = await widget.feedbackService.addFeedbackImages(
        path: '${widget.appName}/${selectedCategory.name}/${feedback.id}/',
        fileList: fileList,
      );

      await widget.feedbackService.addFeedback(
        feedback.copyWith(
          imageUrls: imageUrls,
        ),
      );
      await Fluttertoast.showToast(msg: '완료');
    } catch (e, st) {
      log('send feedback failed: $e, $st');
      await Fluttertoast.showToast(msg: '실패 했습니다.');
    } finally {
      setState(() {
        _isLoading = false;
      });
      widget.onSendFinish?.call(null);
      Navigator.pop(context);
    }
  }
}

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    required this.child,
    super.key,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: 32),
  });

  final void Function()? onTap;
  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
            side: BorderSide(color: color),
          ),
        ),
        enableFeedback: true,
        overlayColor: MaterialStateColor.resolveWith(
          (states) => color,
        ),
        backgroundColor: MaterialStateProperty.all<Color>(color),
        padding: MaterialStateProperty.all<EdgeInsets>(
          padding,
        ),
      ),
      onPressed: () {
        onTap?.call();
      },
      child: child,
    );
  }
}
