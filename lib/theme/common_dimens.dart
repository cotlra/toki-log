import 'package:flutter/material.dart';

final class FixedSpacer extends SizedBox {
  const FixedSpacer._({super.width, super.height});

  factory FixedSpacer.h0_25() => const FixedSpacer._(height: _value0_25);
  factory FixedSpacer.h0_5() => const FixedSpacer._(height: _value0_5);
  factory FixedSpacer.h0_75() => const FixedSpacer._(height: _value0_75);
  factory FixedSpacer.h1() => const FixedSpacer._(height: _value1);
  factory FixedSpacer.h1_5() => const FixedSpacer._(height: _value1_5);
  factory FixedSpacer.h2() => const FixedSpacer._(height: _value2);
  factory FixedSpacer.h3() => const FixedSpacer._(height: _value3);
  factory FixedSpacer.h5() => const FixedSpacer._(height: _value5);
  factory FixedSpacer.h8() => const FixedSpacer._(height: _value8);

  factory FixedSpacer.w0_25() => const FixedSpacer._(width: _value0_25);
  factory FixedSpacer.w0_5() => const FixedSpacer._(width: _value0_5);
  factory FixedSpacer.w0_75() => const FixedSpacer._(width: _value0_75);
  factory FixedSpacer.w1() => const FixedSpacer._(width: _value1);
  factory FixedSpacer.w1_5() => const FixedSpacer._(width: _value1_5);
  factory FixedSpacer.w2() => const FixedSpacer._(width: _value2);
  factory FixedSpacer.w3() => const FixedSpacer._(width: _value3);
  factory FixedSpacer.w5() => const FixedSpacer._(width: _value5);
  factory FixedSpacer.w8() => const FixedSpacer._(width: _value8);
}

final class EdgeInsetsConst extends EdgeInsets {
  const EdgeInsetsConst._all(super.value) : super.all();
  const EdgeInsetsConst._only({
    super.left,
    super.top,
    super.right,
    super.bottom,
  }) : super.only();
  const EdgeInsetsConst._symmetric({super.vertical, super.horizontal})
    : super.symmetric();

  factory EdgeInsetsConst.a0_25() => const EdgeInsetsConst._all(_value0_25);
  factory EdgeInsetsConst.a0_5() => const EdgeInsetsConst._all(_value0_5);
  factory EdgeInsetsConst.a0_75() => const EdgeInsetsConst._all(_value0_75);
  factory EdgeInsetsConst.a1() => const EdgeInsetsConst._all(_value1);
  factory EdgeInsetsConst.a1_5() => const EdgeInsetsConst._all(_value1_5);
  factory EdgeInsetsConst.a2() => const EdgeInsetsConst._all(_value2);
  factory EdgeInsetsConst.a3() => const EdgeInsetsConst._all(_value3);
  factory EdgeInsetsConst.a5() => const EdgeInsetsConst._all(_value5);

  factory EdgeInsetsConst.l0_25() =>
      const EdgeInsetsConst._only(left: _value0_25);
  factory EdgeInsetsConst.l0_5() =>
      const EdgeInsetsConst._only(left: _value0_5);
  factory EdgeInsetsConst.l0_75() =>
      const EdgeInsetsConst._only(left: _value0_75);
  factory EdgeInsetsConst.l1() => const EdgeInsetsConst._only(left: _value1);
  factory EdgeInsetsConst.l1_5() =>
      const EdgeInsetsConst._only(left: _value1_5);
  factory EdgeInsetsConst.l2() => const EdgeInsetsConst._only(left: _value2);
  factory EdgeInsetsConst.l3() => const EdgeInsetsConst._only(left: _value3);
  factory EdgeInsetsConst.l5() => const EdgeInsetsConst._only(left: _value5);

  factory EdgeInsetsConst.t0_25() =>
      const EdgeInsetsConst._only(top: _value0_25);
  factory EdgeInsetsConst.t0_5() => const EdgeInsetsConst._only(top: _value0_5);
  factory EdgeInsetsConst.t0_75() =>
      const EdgeInsetsConst._only(top: _value0_75);
  factory EdgeInsetsConst.t1() => const EdgeInsetsConst._only(top: _value1);
  factory EdgeInsetsConst.t1_5() => const EdgeInsetsConst._only(top: _value1_5);
  factory EdgeInsetsConst.t2() => const EdgeInsetsConst._only(top: _value2);
  factory EdgeInsetsConst.t3() => const EdgeInsetsConst._only(top: _value3);
  factory EdgeInsetsConst.t5() => const EdgeInsetsConst._only(top: _value5);

  factory EdgeInsetsConst.r0_25() =>
      const EdgeInsetsConst._only(right: _value0_25);
  factory EdgeInsetsConst.r0_5() =>
      const EdgeInsetsConst._only(right: _value0_5);
  factory EdgeInsetsConst.r0_75() =>
      const EdgeInsetsConst._only(right: _value0_75);
  factory EdgeInsetsConst.r1() => const EdgeInsetsConst._only(right: _value1);
  factory EdgeInsetsConst.r1_5() =>
      const EdgeInsetsConst._only(right: _value1_5);
  factory EdgeInsetsConst.r2() => const EdgeInsetsConst._only(right: _value2);
  factory EdgeInsetsConst.r3() => const EdgeInsetsConst._only(right: _value3);
  factory EdgeInsetsConst.r5() => const EdgeInsetsConst._only(right: _value5);

  factory EdgeInsetsConst.b0_25() =>
      const EdgeInsetsConst._only(bottom: _value0_25);
  factory EdgeInsetsConst.b0_5() =>
      const EdgeInsetsConst._only(bottom: _value0_5);
  factory EdgeInsetsConst.b0_75() =>
      const EdgeInsetsConst._only(bottom: _value0_75);
  factory EdgeInsetsConst.b1() => const EdgeInsetsConst._only(bottom: _value1);
  factory EdgeInsetsConst.b1_5() =>
      const EdgeInsetsConst._only(bottom: _value1_5);
  factory EdgeInsetsConst.b2() => const EdgeInsetsConst._only(bottom: _value2);
  factory EdgeInsetsConst.b3() => const EdgeInsetsConst._only(bottom: _value3);
  factory EdgeInsetsConst.b5() => const EdgeInsetsConst._only(bottom: _value5);

  factory EdgeInsetsConst.x0_25() =>
      const EdgeInsetsConst._symmetric(horizontal: _value0_25);
  factory EdgeInsetsConst.x0_5() =>
      const EdgeInsetsConst._symmetric(horizontal: _value0_5);
  factory EdgeInsetsConst.x0_75() =>
      const EdgeInsetsConst._symmetric(horizontal: _value0_75);
  factory EdgeInsetsConst.x1() =>
      const EdgeInsetsConst._symmetric(horizontal: _value1);
  factory EdgeInsetsConst.x1_5() =>
      const EdgeInsetsConst._symmetric(horizontal: _value1_5);
  factory EdgeInsetsConst.x2() =>
      const EdgeInsetsConst._symmetric(horizontal: _value2);
  factory EdgeInsetsConst.x3() =>
      const EdgeInsetsConst._symmetric(horizontal: _value3);
  factory EdgeInsetsConst.x5() =>
      const EdgeInsetsConst._symmetric(horizontal: _value5);

  factory EdgeInsetsConst.y0_25() =>
      const EdgeInsetsConst._symmetric(vertical: _value0_25);
  factory EdgeInsetsConst.y0_5() =>
      const EdgeInsetsConst._symmetric(vertical: _value0_5);
  factory EdgeInsetsConst.y0_75() =>
      const EdgeInsetsConst._symmetric(vertical: _value0_75);
  factory EdgeInsetsConst.y1() =>
      const EdgeInsetsConst._symmetric(vertical: _value1);
  factory EdgeInsetsConst.y1_5() =>
      const EdgeInsetsConst._symmetric(vertical: _value1_5);
  factory EdgeInsetsConst.y2() =>
      const EdgeInsetsConst._symmetric(vertical: _value2);
  factory EdgeInsetsConst.y3() =>
      const EdgeInsetsConst._symmetric(vertical: _value3);
  factory EdgeInsetsConst.y5() =>
      const EdgeInsetsConst._symmetric(vertical: _value5);

  EdgeInsetsConst withL0() {
    return EdgeInsetsConst._only(top: top, right: right, bottom: bottom);
  }

  EdgeInsetsConst withL0_25() {
    return EdgeInsetsConst._only(
      left: _value0_25,
      top: top,
      right: right,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withL0_5() {
    return EdgeInsetsConst._only(
      left: _value0_5,
      top: top,
      right: right,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withL0_75() {
    return EdgeInsetsConst._only(
      left: _value0_75,
      top: top,
      right: right,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withL1() {
    return EdgeInsetsConst._only(
      left: _value1,
      top: top,
      right: right,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withL1_5() {
    return EdgeInsetsConst._only(
      left: _value1_5,
      top: top,
      right: right,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withL2() {
    return EdgeInsetsConst._only(
      left: _value2,
      top: top,
      right: right,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withL3() {
    return EdgeInsetsConst._only(
      left: _value3,
      top: top,
      right: right,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withL5() {
    return EdgeInsetsConst._only(
      left: _value5,
      top: top,
      right: right,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withT0() {
    return EdgeInsetsConst._only(left: left, right: right, bottom: bottom);
  }

  EdgeInsetsConst withT0_25() {
    return EdgeInsetsConst._only(
      left: left,
      top: _value0_25,
      right: right,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withT0_5() {
    return EdgeInsetsConst._only(
      left: left,
      top: _value0_5,
      right: right,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withT0_75() {
    return EdgeInsetsConst._only(
      left: left,
      top: _value0_75,
      right: right,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withT1() {
    return EdgeInsetsConst._only(
      left: left,
      top: _value1,
      right: right,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withT1_5() {
    return EdgeInsetsConst._only(
      left: left,
      top: _value1_5,
      right: right,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withT2() {
    return EdgeInsetsConst._only(
      left: left,
      top: _value2,
      right: right,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withT3() {
    return EdgeInsetsConst._only(
      left: left,
      top: _value3,
      right: right,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withT5() {
    return EdgeInsetsConst._only(
      left: left,
      top: _value5,
      right: right,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withR0() {
    return EdgeInsetsConst._only(left: left, top: top, bottom: bottom);
  }

  EdgeInsetsConst withR0_25() {
    return EdgeInsetsConst._only(
      left: left,
      top: top,
      right: _value0_25,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withR0_5() {
    return EdgeInsetsConst._only(
      left: left,
      top: top,
      right: _value0_5,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withR0_75() {
    return EdgeInsetsConst._only(
      left: left,
      top: top,
      right: _value0_75,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withR1() {
    return EdgeInsetsConst._only(
      left: left,
      top: top,
      right: _value1,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withR1_5() {
    return EdgeInsetsConst._only(
      left: left,
      top: top,
      right: _value1_5,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withR2() {
    return EdgeInsetsConst._only(
      left: left,
      top: top,
      right: _value2,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withR3() {
    return EdgeInsetsConst._only(
      left: left,
      top: top,
      right: _value3,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withR5() {
    return EdgeInsetsConst._only(
      left: left,
      top: top,
      right: _value5,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withB0() {
    return EdgeInsetsConst._only(left: left, top: top, right: right);
  }

  EdgeInsetsConst withB0_25() {
    return EdgeInsetsConst._only(
      left: left,
      top: top,
      right: right,
      bottom: _value0_25,
    );
  }

  EdgeInsetsConst withB0_5() {
    return EdgeInsetsConst._only(
      left: left,
      top: top,
      right: right,
      bottom: _value0_5,
    );
  }

  EdgeInsetsConst withB0_75() {
    return EdgeInsetsConst._only(
      left: left,
      top: top,
      right: right,
      bottom: _value0_75,
    );
  }

  EdgeInsetsConst withB1() {
    return EdgeInsetsConst._only(
      left: left,
      top: top,
      right: right,
      bottom: _value1,
    );
  }

  EdgeInsetsConst withB1_5() {
    return EdgeInsetsConst._only(
      left: left,
      top: top,
      right: right,
      bottom: _value1_5,
    );
  }

  EdgeInsetsConst withB2() {
    return EdgeInsetsConst._only(
      left: left,
      top: top,
      right: right,
      bottom: _value2,
    );
  }

  EdgeInsetsConst withB3() {
    return EdgeInsetsConst._only(
      left: left,
      top: top,
      right: right,
      bottom: _value3,
    );
  }

  EdgeInsetsConst withB5() {
    return EdgeInsetsConst._only(
      left: left,
      top: top,
      right: right,
      bottom: _value5,
    );
  }

  EdgeInsetsConst withY0() {
    return EdgeInsetsConst._only(left: left, right: right);
  }

  EdgeInsetsConst withY0_25() {
    return EdgeInsetsConst._only(
      left: left,
      top: _value0_25,
      right: right,
      bottom: _value0_25,
    );
  }

  EdgeInsetsConst withY0_5() {
    return EdgeInsetsConst._only(
      left: left,
      top: _value0_5,
      right: right,
      bottom: _value0_5,
    );
  }

  EdgeInsetsConst withY0_75() {
    return EdgeInsetsConst._only(
      left: left,
      top: _value0_75,
      right: right,
      bottom: _value0_75,
    );
  }

  EdgeInsetsConst withY1() {
    return EdgeInsetsConst._only(
      left: left,
      top: _value1,
      right: right,
      bottom: _value1,
    );
  }

  EdgeInsetsConst withY1_5() {
    return EdgeInsetsConst._only(
      left: left,
      top: _value1_5,
      right: right,
      bottom: _value1_5,
    );
  }

  EdgeInsetsConst withY2() {
    return EdgeInsetsConst._only(
      left: left,
      top: _value2,
      right: right,
      bottom: _value2,
    );
  }

  EdgeInsetsConst withY3() {
    return EdgeInsetsConst._only(
      left: left,
      top: _value3,
      right: right,
      bottom: _value3,
    );
  }

  EdgeInsetsConst withY5() {
    return EdgeInsetsConst._only(
      left: left,
      top: _value5,
      right: right,
      bottom: _value5,
    );
  }

  EdgeInsetsConst withX0() {
    return EdgeInsetsConst._only(top: top, bottom: bottom);
  }

  EdgeInsetsConst withX0_25() {
    return EdgeInsetsConst._only(
      left: _value0_25,
      top: top,
      right: _value0_25,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withX0_5() {
    return EdgeInsetsConst._only(
      left: _value0_5,
      top: top,
      right: _value0_5,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withX0_75() {
    return EdgeInsetsConst._only(
      left: _value0_75,
      top: top,
      right: _value0_75,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withX1() {
    return EdgeInsetsConst._only(
      left: _value1,
      top: top,
      right: _value1,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withX1_5() {
    return EdgeInsetsConst._only(
      left: _value1_5,
      top: top,
      right: _value1_5,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withX2() {
    return EdgeInsetsConst._only(
      left: _value2,
      top: top,
      right: _value2,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withX3() {
    return EdgeInsetsConst._only(
      left: _value3,
      top: top,
      right: _value3,
      bottom: bottom,
    );
  }

  EdgeInsetsConst withX5() {
    return EdgeInsetsConst._only(
      left: _value5,
      top: top,
      right: _value5,
      bottom: bottom,
    );
  }
}

const double _value0_25 = 4;
const double _value0_5 = 8;
const double _value0_75 = 12;
const double _value1 = 16;
const double _value1_5 = 24;
const double _value2 = 32;
const double _value3 = 48;
const double _value4 = 64;
const double _value5 = 80;
const double _value8 = 128;

final class RadiusConst extends Radius {
  const RadiusConst._circular(super.radius) : super.circular();

  factory RadiusConst.r0_25() => const RadiusConst._circular(_value0_25);
  factory RadiusConst.r0_5() => const RadiusConst._circular(_value0_5);
  factory RadiusConst.r0_75() => const RadiusConst._circular(_value0_75);
  factory RadiusConst.r1() => const RadiusConst._circular(_value1);
  factory RadiusConst.r1_5() => const RadiusConst._circular(_value1_5);
  factory RadiusConst.r2() => const RadiusConst._circular(_value2);
  factory RadiusConst.rInfinity() => const RadiusConst._circular(999);
}

final class BorderRadiusConst extends BorderRadius {
  const BorderRadiusConst._all(super.radius) : super.all();

  factory BorderRadiusConst.br0_25() =>
      BorderRadiusConst._all(RadiusConst.r0_25());
  factory BorderRadiusConst.br0_5() =>
      BorderRadiusConst._all(RadiusConst.r0_5());
  factory BorderRadiusConst.br0_75() =>
      BorderRadiusConst._all(RadiusConst.r0_75());
  factory BorderRadiusConst.br1() => BorderRadiusConst._all(RadiusConst.r1());
  factory BorderRadiusConst.br1_5() =>
      BorderRadiusConst._all(RadiusConst.r1_5());
  factory BorderRadiusConst.br2() => BorderRadiusConst._all(RadiusConst.r2());
  factory BorderRadiusConst.brInfinity() =>
      BorderRadiusConst._all(RadiusConst.rInfinity());
}

abstract final class StyleValue {
  StyleValue._();

  static double get v0_25 => _value0_25;
  static double get v0_5 => _value0_5;
  static double get v0_75 => _value0_75;
  static double get v1 => _value1;
  static double get v1_5 => _value1_5;
  static double get v2 => _value2;
  static double get v3 => _value3;
  static double get v4 => _value4;
  static double get v5 => _value5;
  static double get v8 => _value8;
}
