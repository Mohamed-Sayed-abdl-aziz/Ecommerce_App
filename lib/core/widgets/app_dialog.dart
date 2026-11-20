import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:material_ui/material_ui.dart';

abstract class AppDialog {
  static void showLoadingUi(BuildContext context) {
    showDialog(
      context: context,
      // barrierDismissible: false,
      builder: (context) => PopScope(
        // canPop: false,
        child: AlertDialog(
          backgroundColor: AppColors.backgroundColor,
          content: SizedBox(
            height: 40,
            width: 40,
            child: Center(
              child: Row(
                spacing: 30,
                mainAxisAlignment: .center,
                children: [
                  CircularProgressIndicator(color: AppColors.secondaryColor),
                  Text(
                    "Loading...",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: .w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  static void showErrorUi({
    required BuildContext context,
    required String error,
  }) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.backgroundColor,
        title: Text("Error"),
        content: Text(
          error,
          style: TextStyle(
            fontSize: 16,
            fontWeight: .w400,
            color: AppColors.secondaryColor,
          ),
        ),
      ),
    );
  }
}
