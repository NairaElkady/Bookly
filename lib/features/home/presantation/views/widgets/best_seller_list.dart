import 'package:flutter/material.dart';

import '../../../../../utlis/assets.dart';
import '../../../../../utlis/constatns.dart';
import '../../../../../utlis/styles.dart';
import 'book_rating.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AssetsData.testImage))),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  'Harry Potter and The Globlet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20.copyWith(
                    fontFamily: kGtSectraFine
                  ),
                ),
              ),
              const SizedBox(height: 3,),
              const Text('J.K ROwling',
              style: Styles.textStyle14,
              ),
              const SizedBox(height: 3),
              Container(
                color: Colors.amber,
                child: Row(
                  children: [
                    Text('19.9 ',
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.bold)),
                        const Spacer(),
                      const BookRating(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}