import 'package:flutter/material.dart';

class OrderStatusWidget extends StatelessWidget {
  OrderStatusWidget({
    super.key,
    required this.status,
    required this.isOverdue,
  });

  final String status;
  final bool isOverdue;

  final Map<String, int> allStatus = <String, int>{
    'aguardando_pagamento': 0,
    'reembolso': 1,
    'pagamento_confirmado': 2,
    'preparando_envio': 3,
    'Enviado': 4,
    'Entregue': 5
  };

  int get currentStatus => allStatus[status]!;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const StatusDot(
          isActive: true,
          title: 'Pedido Confirmado',
        ),
        const CustomDivider(),
        if (currentStatus == 1) ...[
          const StatusDot(
            isActive: true,
            title: 'Pix Estornado',
            backgroundColor: Colors.red,
          ),
        ]
      ],
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      height: 10,
      width: 2,
      color: Colors.grey.shade300,
    );
  }
}

class StatusDot extends StatelessWidget {
  const StatusDot(
      {super.key,
      required this.isActive,
      required this.title,
      this.backgroundColor});
  final bool isActive;
  final String title;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Dot
        Container(
          alignment: Alignment.center,
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: const Color.fromARGB(255, 47, 115, 172)),
            color: isActive
                ? backgroundColor ?? const Color.fromARGB(255, 74, 112, 179)
                : Colors.transparent,
          ),
          child: isActive
              ? const Icon(
                  Icons.check,
                  size: 13,
                  color: Colors.white,
                )
              : const SizedBox.shrink(),
        ),

        const SizedBox(
          width: 5,
        ),
        //Texto
        Expanded(
            child: Text(
          title,
          style: const TextStyle(fontSize: 12),
        )),
      ],
    );
  }
}
