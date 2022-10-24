

//FEITO POR M.CATIELLY

import 'package:flutter/widgets.dart';

class Cards {
  late String urlImage;
  late String text;
  late double? top;
  late double? bottom;
  late double? left;
  late double? right;
  late final bool? isWhiteColor;
  late double containerSize;
  late final Widget? nextPage;

  Cards({
    required this.urlImage,
    required this.text,
    required this.top,
    required this.bottom,
    required this.left,
    required this.right,
    required this.containerSize,
    this.nextPage,
    this.isWhiteColor = false,
  });

  Cards.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    urlImage = json['url_image'];
    top = json['top'];
    bottom = json['bottom'];
    left = json['left'];
    right = json['right'];
    containerSize = json['containerSize'];
  }

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['text'] = text;
    data['url_image'] = urlImage;
    data['top'] = top;
    data['bottom'] = bottom;
    data['left'] = left;
    data['right'] = right;
    data['containerSize'] = containerSize;

    return data;
  }
}
