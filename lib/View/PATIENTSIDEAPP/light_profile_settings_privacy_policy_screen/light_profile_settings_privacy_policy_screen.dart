import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/Widget/Patientwidgets/bkBtn.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

class LightProfileSettingsPrivacyPolicyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // bool isDark = Theme.of(context).brightness == Brightness.dark;
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
                top: 36,
              ),
              child: Padding(
                padding: getPadding(
                  left: 24,
                  right: 204,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                        padding: getPadding(
                          bottom: 3,
                        ),
                        child: BkBtn()),
                    Padding(
                      padding: getPadding(
                        left: 20,
                        bottom: 8,
                      ),
                      child: Text(
                        "Privacy Policy",
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
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: getPadding(
                    top: 38,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: getHorizontalSize(
                          380.00,
                        ),
                        margin: getMargin(
                          left: 24,
                          right: 24,
                        ),
                        child: Text(
                          "Odio eu feugiat pretium nibh ipsum consequat nisl. Tempus quam pellentesque nec nam aliquam sem et tortor consequat. Elit eget gravida cum sociis natoque penatibus. Sed elementum tempus egestas sed sed risus. Id interdum velit laoreet id donec ultrices. Fermentum leo vel orci porta non pulvinar neque laoreet. In mollis nunc sed id semper risus in hendrerit gravida. Venenatis lectus magna fringilla urna porttitor rhoncus dolor purus. Erat nam at lectus urna duis convallis convallis. Interdum velit laoreet id donec ultrices tincidunt arcu. Sit amet venenatis urna cursus eget nunc scelerisque viverra. Purus in massa tempor nec feugiat. Hendrerit gravida rutrum quisque non tellus orci ac auctor augue. Aenean vel elit scelerisque mauris pellentesque.\n\nOdio eu feugiat pretium nibh ipsum consequat nisl. Tempus quam pellentesque nec nam aliquam sem et tortor consequat. Elit eget gravida cum sociis natoque penatibus. Sed elementum tempus egestas sed sed risus. Id interdum velit laoreet id donec ultrices. Fermentum leo vel orci porta non pulvinar neque laoreet. In mollis nunc sed id semper risus in hendrerit gravida. Venenatis lectus magna fringilla urna porttitor rhoncus dolor purus. Erat nam at lectus urna duis convallis convallis. Interdum velit laoreet id donec ultrices tincidunt arcu.",
                          maxLines: null,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.bluegray700,
                            fontSize: getFontSize(
                              16,
                            ),
                            fontFamily: 'Source Sans Pro',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
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
