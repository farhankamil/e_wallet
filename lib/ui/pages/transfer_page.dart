import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/ui/widgets/buttons.dart';
import 'package:e_wallet/ui/widgets/forms.dart';
import 'package:e_wallet/ui/widgets/transfer_recent_user_item.dart';
import 'package:e_wallet/ui/widgets/transfer_result_user_item.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transfer',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Search',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomFormField(
            title: 'by username',
            isShowTitle: false,
          ),
          // buildRecentUsers(),
          buildResult(),

          const SizedBox(
            height: 274,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/transfer-amount');
            },
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

Widget buildRecentUsers() {
  return Container(
    margin: const EdgeInsets.only(
      top: 40,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recent Users',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const TransferRecenUserItem(
          imageUrl: 'assets/img_friend1.png',
          name: 'Yonna Jie',
          username: 'yoenna',
          isVerified: true,
        ),
        const TransferRecenUserItem(
          imageUrl: 'assets/img_friend2.png',
          name: 'John Hi',
          username: 'jhi',
        ),
        const TransferRecenUserItem(
          imageUrl: 'assets/img_friend3.png',
          name: 'Masayoshi',
          username: 'form',
        ),
      ],
    ),
  );
}

Widget buildResult() {
  return Container(
    margin: const EdgeInsets.only(
      top: 40,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Result',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Wrap(
          spacing: 34,
          runSpacing: 34,
          children: const [
            TransferResultUserItem(
              imageUrl: 'assets/img_friend1.png',
              name: 'Yonna Jie',
              username: 'yoenna',
              isVerified: true,
            ),
            TransferResultUserItem(
              imageUrl: 'assets/img_friend2.png',
              name: 'Yonna Ka',
              username: 'yoenyu',
              // isVerified: true,
              isSelected: true,
            ),
          ],
        )
      ],
    ),
  );
}