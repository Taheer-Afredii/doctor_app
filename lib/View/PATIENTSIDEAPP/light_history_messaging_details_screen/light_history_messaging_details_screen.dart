import 'package:doctorq/Widget/Patientwidgets/bkBtn.dart';
import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:doctorq/data/chat_list.dart';
import 'package:doctorq/models/doctors_model.dart';
import 'package:flutter/material.dart';

import '../messages_detail_screen/widgets/chat_list.dart';

// ignore: must_be_immutable
class LightHistoryMessagingDetailsScreen extends StatefulWidget {
  DoctorsModel doctor;
  LightHistoryMessagingDetailsScreen({required this.doctor});
  @override
  State<LightHistoryMessagingDetailsScreen> createState() =>
      _LightHistoryMessagingDetailsScreenState();
}

class _LightHistoryMessagingDetailsScreenState
    extends State<LightHistoryMessagingDetailsScreen> {
  TextEditingController textEditingController = TextEditingController();
  final ScrollController _controller = ScrollController();
  void scrollDown() {
    _controller.jumpTo(_controller.position.maxScrollExtent);
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    // bool isRtl = false;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: size.width,
              margin: getMargin(top: 26, bottom: 10),
              child: Padding(
                padding: getPadding(
                  left: 24,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      children: [
                        BkBtn(),
                        HorizontalSpace(width: 20),
                        Text(
                          widget.doctor.name,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: getFontSize(
                              26,
                            ),
                            fontFamily: 'Source Sans Pro',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            VerticalSpace(height: 20),
            Container(
              height: getVerticalSize(100),
              margin: getMargin(
                left: 20,
                right: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    12.00,
                  ),
                ),
                border: Border.all(
                  color: isDark
                      ? ColorConstant.darkLine
                      : ColorConstant.bluegray50,
                  width: getHorizontalSize(
                    1.00,
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: getSize(
                      100.00,
                    ),
                    width: getSize(
                      100.00,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            getHorizontalSize(
                              12.00,
                            ),
                          ),
                          bottomLeft: Radius.circular(
                            getHorizontalSize(
                              12.00,
                            ),
                          ),
                          bottomRight: Radius.circular(
                            getHorizontalSize(
                              0.00,
                            ),
                          ),
                          topRight: Radius.circular(
                            getHorizontalSize(
                              0.00,
                            ),
                          ),
                        ),
                        child: CommonImageView(
                          imagePath: widget.doctor.img,
                          height: getSize(
                            100.00,
                          ),
                          width: getSize(
                            100.00,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  HorizontalSpace(width: 20),
                  Expanded(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  widget.doctor.name,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 3,
                                  ),
                                  child: Text(
                                    "10:00 - 10:30 AM",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Source Sans Pro',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            VerticalSpace(height: 20),
            Expanded(
                child: ListView.separated(
              physics: BouncingScrollPhysics(),
              controller: _controller,
              padding: getPadding(left: 20, right: 20),
              itemCount: chatList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ChatListWidget(
                  index: index,
                );
              },
              separatorBuilder: (context, index) => VerticalSpace(height: 20),
            )),
          ],
        ),
      ),
    );
  }
}
