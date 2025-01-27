import 'package:doc_app/Core/theming/styles.dart';
import 'package:doc_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocImageAndText extends StatelessWidget {
  const DocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(Assets.svgsDocdocLogoLowOpacity),
        Container(
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.white.withAlpha(0),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const [0.14, 0.4],
          )),
          child: Image.asset(Assets.imagesOnboardingDoctorImage),
        ),
        Positioned(
          bottom: 30.h,
          right: 0,
          left: 0,
          child: Text(
            'Best Doctor \nAppointment App',
            textAlign: TextAlign.center,
            style: TextStyles.font32BlueBold,
          ),
        ),
      ],
    );
  }
}
