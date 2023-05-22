import 'package:doctorq/View/PATIENTSIDEAPP/Patient_Profile_Settings_Screen/patient_profile_settings_invite_friends_screen/widgets/listdarrellsteward_item_widget.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:doctorq/data/friends_list.dart';
import 'package:doctorq/Widget/Patientwidgets/bkBtn.dart';
import 'package:flutter/material.dart';

class PatientProfileSettingsInviteFriendsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: size.width,
              margin: getMargin(
                top: 20,
              ),
              child: Padding(
                padding: getPadding(
                  left: 24,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BkBtn(),
                    HorizontalSpace(width: 20),
                    Text(
                      "Invite Friends",
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
              ),
            ),
            VerticalSpace(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: ListView.builder(
                    padding: getPadding(
                      left: 24,
                      right: 24,
                      bottom: 30,
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: friendsList.length,
                    itemBuilder: (context, index) {
                      return ListdarrellstewardItemWidget(index: index);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
