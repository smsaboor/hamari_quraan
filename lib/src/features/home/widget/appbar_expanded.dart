import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/util/bloc/theme/theme_bloc.dart';
import 'kiblat_card.dart';



import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/util/bloc/juz/juz_bloc.dart';
import '../../../core/util/bloc/surah/surah_bloc.dart';
import '../../bottom_tab/bloc/tab/tab_bloc.dart' as btb;


class AppBarExpanded extends StatelessWidget {
  AppBarExpanded();
  final String _userAvatar = "https://randomuser.me/api/portraits/men/46.jpg";
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 1.sw,
      height: 0.4.sh,
      child: Stack(
        children: [
          BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return SizedBox(
                width: 1.sw,
                height: 0.3.sh,
                child: state.currentTheme.brightness == Brightness.dark
                    ? SvgPicture.asset(
                        'assets/images/home_icon/svg/night_mode.svg',
                        fit: BoxFit.cover,
                      )
                    : SvgPicture.asset(
                        'assets/images/home_icon/svg/day_mode.svg',
                        fit: BoxFit.cover,
                      ),
              );
            },
          ),
          Container(
            width: 1.sw,
            height: 0.3.sh,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).primaryColor.withOpacity(0.5),
                  Colors.transparent,
                ],
                stops: [0.2, 1],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Assalamu alaikum',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                  ),
                  child: KiblatCard(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
