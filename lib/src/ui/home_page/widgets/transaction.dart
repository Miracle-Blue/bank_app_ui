import 'package:bank_app/src/app.dart';
import 'package:bank_app/src/common/constants/app_string.dart';
import 'package:flutter/material.dart';

import '../../../model/cryto_model.dart';

class Transaction extends StatelessWidget {
  const Transaction({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                AppString.transactionDetail,
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                AppString.viewAll,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          ...?AppInheritedWidget.of(context)?.transactionData.map<Widget>(
                (e) => TransactionItem(item: e),
              ),
        ],
      ),
    );
  }
}

class TransactionItem extends StatelessWidget {
  final Crypto item;

  const TransactionItem({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        width: double.infinity,
        height: 55,
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item.name!,
                style: const TextStyle(
                  fontSize: 18,
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                item.sena!,
                style: const TextStyle(
                  fontSize: 18,
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item.data!,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                item.time!,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          leading: Image(
            image: AssetImage(item.image!),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
