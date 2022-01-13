import 'package:carrot_market_cc/pages/login/widgets/background.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'LOADING',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
          SizedBox(
            height: 60,
          ),
          AnimateImage(),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    ));
  }
}

class AnimateImage extends StatefulWidget {
  const AnimateImage({Key? key}) : super(key: key);

  @override
  _AnimateImageState createState() => _AnimateImageState();
}

class _AnimateImageState extends State<AnimateImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late final Animation<Offset> offsetAnimation;
  late final Animation<BorderRadius> borderRadiusAnimation;
  late final Animation<double> rotateAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);

    offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(0, 1),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    borderRadiusAnimation = Tween<BorderRadius>(
      begin: BorderRadius.circular(23),
      end: BorderRadius.circular(3),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    rotateAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return RotationTransition(
      turns: rotateAnimation,
      child: SlideTransition(
        position: offsetAnimation,
        child: Container(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: borderRadiusAnimation.value,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: _controller,
    );
  }
}
