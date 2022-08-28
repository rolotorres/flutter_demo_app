import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GuidePageScreen extends StatelessWidget {
  const GuidePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [
          Page1(),
          Page2(),
          Page3(),
          Page4(),
        ],
      )
   );
  }
}

class Background1 extends StatelessWidget {
  const Background1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return SvgPicture.asset('assets/img/01.svg');
    return SvgPicture.asset('assets/img/01.svg');
  }
}

class Background2 extends StatelessWidget {
  const Background2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('assets/img/02.svg');
  }
}

class Background3 extends StatelessWidget {
  const Background3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('assets/img/03.svg');
  }
}

class Background4 extends StatelessWidget {
  const Background4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('assets/img/04.svg');
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Background1()
      ],
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Background2()
      ],
    );
  }
}
class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Background3()
      ],
    );
  }
}
class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Background4()
      ],
    );
  }
}