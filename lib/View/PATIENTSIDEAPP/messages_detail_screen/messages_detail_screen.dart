import 'package:doctorq/Widget/Patientwidgets/bkBtn.dart';
import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:doctorq/data/chat_list.dart';
import 'package:doctorq/models/appointments_model.dart';
import 'package:doctorq/View/PatientSideApp/light_appointments_list_messaging_ended_screen/light_appointments_list_messaging_ended_screen.dart';
import 'package:doctorq/View/PatientSideApp/light_appointments_step_2_filled_screen/light_appointments_step_2_filled_screen.dart';
import 'package:doctorq/models/chat_model.dart';

import 'package:flutter/material.dart';

import 'widgets/chat_list.dart';

// ignore: must_be_immutable
class MessagesDetailScreen extends StatefulWidget {
  AppointmentsModel appointment;
  MessagesDetailScreen({required this.appointment});
  @override
  State<MessagesDetailScreen> createState() => _MessagesDetailScreenState();
}

class _MessagesDetailScreenState extends State<MessagesDetailScreen> {
  TextEditingController textEditingController = TextEditingController();
  final ScrollController _controller = ScrollController();
  void scrollDown() {
    _controller.jumpTo(_controller.position.maxScrollExtent);
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    bool isRtl = false;
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
                          widget.appointment.name,
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
                  color: ColorConstant.bluegray50,
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
                        ),
                        child: CommonImageView(
                          imagePath: widget.appointment.img,
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
                                  widget.appointment.name,
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
                                    widget.appointment.time,
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
            Padding(
              padding: getPadding(top: 20, bottom: 20, left: 20, right: 20),
              child: TextFormField(
                controller: textEditingController,
                onFieldSubmitted: (val) {
                  setState(() {
                    chatList.add(ChatModel(msg: val, isMine: true));
                    scrollDown();
                    textEditingController.clear();
                  });
                },
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.top,
                maxLines: null,
                decoration: InputDecoration(
                    hintText: 'Type a message',
                    hintStyle: TextStyle(
                        color: Color(0xFFA5ABB3),
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w400,
                        fontSize: getFontSize(16)),
                    contentPadding: getPadding(
                        bottom: 24,
                        top: 24,
                        left: isRtl ? 0 : 24,
                        right: isRtl ? 24 : 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          24.00,
                        ),
                      ),
                      borderSide: BorderSide(
                        color: ColorConstant.bluegray50,
                        width: 2,
                      ),
                    ),
                    filled: true,
                    fillColor: isDark
                        ? ColorConstant.darkTextField
                        : ColorConstant.whiteA700,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          24.00,
                        ),
                      ),
                      borderSide: BorderSide(
                        color: ColorConstant.blueA400,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          24.00,
                        ),
                      ),
                      borderSide: BorderSide(
                        color: ColorConstant.bluegray50,
                        width: 2,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          24.00,
                        ),
                      ),
                      borderSide: BorderSide(
                        color: ColorConstant.bluegray50,
                        width: 2,
                      ),
                    ),
                    suffixIconConstraints: BoxConstraints(
                        maxHeight: getVerticalSize(36),
                        maxWidth: getHorizontalSize(60)),
                    suffixIcon: Padding(
                      padding: getPadding(
                          left: isRtl ? 24 : 0, right: isRtl ? 0 : 24),
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              chatList.add(ChatModel(
                                  msg: textEditingController.text,
                                  isMine: true));
                              scrollDown();
                              textEditingController.clear();
                            });
                            Future.delayed(Duration(seconds: 7), () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        LightAppointmentsListMessagingEndedScreen(
                                          appointment: widget.appointment,
                                          contactMethod: ContactMethods.message,
                                        )),
                              );
                            });
                          },
                          child: Image.asset(ImageConstant.send)),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
