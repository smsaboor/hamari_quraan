import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/util/constants.dart';
import '../bloc/tab/tab_bloc.dart';

class QuranTab extends StatelessWidget {
  const QuranTab();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabBloc, TabState>(
      builder: (context, state) {
        return Container(
          width: double.infinity,
          margin: kPagePadding,
          decoration: BoxDecoration(
            borderRadius: kCardBorderRadius,
            color: Theme.of(context).colorScheme.background,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  if (state.firstTab==0) {
                    BlocProvider.of<TabBloc>(context)
                        .state
                        .controller
                        .animateToPage(
                          0,
                          duration: kAnimationDuration,
                          curve: kAnimationCurve,
                        );

                    BlocProvider.of<TabBloc>(context).add(ToggleTab(0));
                  }
                },
                child: AnimatedContainer(
                  duration: kAnimationDuration,
                  curve: kAnimationCurve,
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 12.h,
                  ),
                  decoration: BoxDecoration(
                    border: state.firstTab==0
                        ? Border(
                            bottom: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2.sp,
                            ),
                          )
                        : Border(
                            bottom: BorderSide(
                              color: Colors.transparent,
                              width: 2.sp,
                            ),
                          ),
                  ),
                  child: Text(
                    'Surah',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (state.firstTab==1) {
                    BlocProvider.of<TabBloc>(context)
                        .state
                        .controller
                        .animateToPage(
                          1,
                          duration: kAnimationDuration,
                          curve: kAnimationCurve,
                        );
                    BlocProvider.of<TabBloc>(context).add(ToggleTab(1));
                  }
                },
                child: AnimatedContainer(
                  duration: kAnimationDuration,
                  curve: kAnimationCurve,
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 12.h,
                  ),
                  decoration: BoxDecoration(
                    border: state.firstTab==1
                        ? Border(
                            bottom: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2.sp,
                            ),
                          )
                        : Border(
                            bottom: BorderSide(
                              color: Colors.transparent,
                              width: 2.sp,
                            ),
                          ),
                  ),
                  child: Text(
                    'Juz',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (state.firstTab==2) {
                    BlocProvider.of<TabBloc>(context)
                        .state
                        .controller
                        .animateToPage(
                      1,
                      duration: kAnimationDuration,
                      curve: kAnimationCurve,
                    );
                    BlocProvider.of<TabBloc>(context).add(ToggleTab(2));
                  }
                },
                child: AnimatedContainer(
                  duration: kAnimationDuration,
                  curve: kAnimationCurve,
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 12.h,
                  ),
                  decoration: BoxDecoration(
                    border: state.firstTab==2
                        ? Border(
                      bottom: BorderSide(
                        color: Theme.of(context).primaryColor,
                        width: 2.sp,
                      ),
                    )
                        : Border(
                      bottom: BorderSide(
                        color: Colors.transparent,
                        width: 2.sp,
                      ),
                    ),
                  ),
                  child: Text(
                    'Bookmark',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
