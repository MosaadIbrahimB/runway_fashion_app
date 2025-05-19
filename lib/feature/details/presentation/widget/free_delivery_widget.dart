import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_text_style.dart';
import '../../data/free_delivery_model.dart';

class FreeDeliveryWidget extends StatelessWidget {
  const FreeDeliveryWidget({
    super.key,
  this.freeDeliveryModel
  });

  final FreeDeliveryModel ?freeDeliveryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      padding: EdgeInsets.symmetric(horizontal: 8).r,
      decoration: BoxDecoration(
        // color: Colors.red,
        border: freeDeliveryModel==null?Border():Border(
          right: BorderSide(color: Colors.black12),
          left: BorderSide(color: Colors.black12),
          top:
          freeDeliveryModel!. borderT == true
                  ? BorderSide(color: Colors.black12)
                  : BorderSide(color: Colors.transparent),
          bottom:
          freeDeliveryModel!. borderB == true
                  ? BorderSide(color: Colors.black12)
                  : BorderSide(color: Colors.transparent),
        ),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              freeDeliveryModel?. pathImage == null?
                  SizedBox():
              SizedBox(
                height: 22.h,
                width: 22.h,
                child:freeDeliveryModel!. pathImage == null ? SizedBox() : Image.asset( freeDeliveryModel!.pathImage!),
              ),
              SizedBox(width:freeDeliveryModel?. pathImage == null ? 0 : 10.w),
              SizedBox(
                // width: MediaQuery.sizeOf(context).width *.50,
                child: FittedBox(
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                    freeDeliveryModel?.  title ?? "",
                    style: AppTextStyle.inter16BlackW700.copyWith(
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 150.w,
            height: 50.h,
            // color: Colors.red,
            alignment: AlignmentDirectional.centerEnd,
            child: freeDeliveryModel?.widget??SizedBox(),
          ),
        ],
      ),
    );
  }
}
