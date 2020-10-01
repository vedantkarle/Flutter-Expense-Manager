import 'package:flutter/material.dart';
import './transaction_item.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTransaction;
  TransactionList(this.transactions, this.deleteTransaction);
  @override
  Widget build(BuildContext context) {
    return transactions.isEmpty
        ? LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                children: <Widget>[
                  Text(
                    'No Transactions Added!',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: constraints.maxHeight * 0.6,
                    child: Image.asset(
                      'assets/images/waiting.png',
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              );
            },
          )
        // : ListView.builder(
        //     itemBuilder: (context, index) {
        //       return TransactionItem(
        //         transaction: transactions[index],
        //         deleteTransaction: deleteTransaction,
        //       );
        //     },
        //     itemCount: transactions.length,
        //   );
        : ListView(
            children: transactions
                .map(
                  (transaction) => TransactionItem(
                      key: ValueKey(transaction.id),
                      transaction: transaction,
                      deleteTransaction: deleteTransaction),
                )
                .toList(),
          );
  }
}
