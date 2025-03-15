import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/styles.dart';
import 'package:quran_app/features/recite/presentation/view/widgets/custom_icon_button.dart';


class TasbeehBox extends StatefulWidget {
  const TasbeehBox({
    super.key,
    this.boxColor = Colors.grey,
    this.isResetCounter = false,
  });
  final Color? boxColor;
  final bool? isResetCounter;

  @override
  State<TasbeehBox> createState() => _TasbeehBoxState();
}

int counter = 0;
class _TasbeehBoxState extends State<TasbeehBox> {
  int counter = 0;

  @override
  void didUpdateWidget(covariant TasbeehBox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isResetCounter == true) {
      
        counter = 0;
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: widget.boxColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomIconButton(
                icon: Icons.add,
                onPressed: () {
                  setState(() {
                    counter += 1;
                  });
                },
              ),
              const SizedBox(width: 40),
              Text(
                counter.toString(),
                style: Styles.textStyleBold26,
              ),
              const SizedBox(width: 40),
              CustomIconButton(
                icon: Icons.remove,
                onPressed: () {
                  setState(() {
                    counter = counter > 0 ? counter - 1 : 0;
                  });
                },
              ),
            ],
          ),
          CustomIconButton(
            icon: Icons.restore,
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
          ),
        ],
      ),
    );
  }
}
